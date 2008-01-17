#!/bin/sh

LOGS=${LOGS:-/var/www/modula3.elegosoft.com/cm3/logs}
FNPAT1=${FNPAT1:-'cm3-pkg-report-'}
FNPATSUF=${FNPATSUF:-.html}
FNPATLS=${FNPAT:-${FNPAT1}'*-*'${FNPATSUF}}
INDEX=${INDEX:-package-status.html}
cd $LOGS || exit 1

TARGETS=`ls -1 ${FNPATLS} |
  sed -e "s/${FNPAT1}\([A-Za-z0-6_]*\)-.*${FNPATSUF}/\1/" |
  sort -u`

mv ${INDEX} ${INDEX}.old
cat > ${INDEX} << EOF
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>CM3 5.1 Package Status</title>
    <META HTTP-EQUIV="Content-Type" CONTENT="text/html">
    <META HTTP-EQUIV="Content-Style-Type" CONTENT="text/css">
    <META HTTP-EQUIV="Resource-type" CONTENT="document"> 
    <META HTTP-EQUIV="Reply-to" CONTENT="m3-support@elego.de"> 
    <LINK HREF="normal.css" REL="stylesheet" TYPE="text/css">
    <META NAME="robots" content="noindex">
  </head>

  <body bgcolor="#ffffff">
    <h2>CM3 Package Status</h2>

EOF

for t in ${TARGETS}; do
  all=`ls -1 ${FNPAT1}${t}-*${FNPATSUF}`
  last=`ls -1 ${FNPAT1}${t}-*${FNPATSUF} | tail -1`
  last10=`ls -1 ${FNPAT1}${t}-*${FNPATSUF} | tail -10`
  ln -sf "${last}" "${FNPAT1}${t}${FNPATSUF}"
  echo "<h3>Target Platform ${t}</h3>"
  for f in ${last10}; do
    echo "<a href=\"$f\">`basename $f .html`</a><br>"
  done
done >> ${INDEX}

cat >> ${INDEX} <<EOF
    <hr>
    <address><a href="mailto:m3-support{at}elego.de">m3-support{at}elego.de</a></address>
<!-- Created: `date` -->
  </body>
</html>
EOF

rm -f ${INDEX}.old
