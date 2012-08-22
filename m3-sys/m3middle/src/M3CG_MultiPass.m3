UNSAFE MODULE M3CG_MultiPass;

IMPORT M3CG, RefSeq, Target;
FROM M3CG IMPORT Type, MType, IType, RType, AType, ZType, Sign;
FROM M3CG IMPORT Name, Var, Proc, Alignment, TypeUID, Label;
FROM M3CG IMPORT Frequency, CallingConvention, CompareOp, ConvertOp, AtomicOp;
FROM M3CG IMPORT BitSize, ByteSize, BitOffset, ByteOffset, RuntimeError;
FROM M3CG IMPORT MemoryOrder;

REVEAL
T = Public BRANDED "M3CG_MultiPass.T" OBJECT

data: RefSeq.T := NIL;
next_label_id := 1;
next_var := 1;
next_proc := 1;
next_scope := 1;

METHODS

Add(a: REFANY) := Add;

OVERRIDES

get_data := get_data;

next_label := next_label;
set_error_handler := set_error_handler;
begin_unit := begin_unit;
end_unit := end_unit;
import_unit := import_unit;
export_unit := export_unit;
set_source_file := set_source_file;
set_source_line := set_source_line;
declare_typename := declare_typename;
declare_array := declare_array;
declare_open_array := declare_open_array;
declare_enum := declare_enum;
declare_enum_elt := declare_enum_elt;
declare_packed := declare_packed;
declare_record := declare_record;
declare_field := declare_field;
declare_set := declare_set;
declare_subrange := declare_subrange;
declare_pointer := declare_pointer;
declare_indirect := declare_indirect;
declare_proctype := declare_proctype;
declare_formal := declare_formal;
declare_raises := declare_raises;
declare_object := declare_object;
declare_method := declare_method;
declare_opaque := declare_opaque;
reveal_opaque := reveal_opaque;
set_runtime_proc := set_runtime_proc;
import_global := import_global;
declare_segment := declare_segment;
bind_segment := bind_segment;
declare_global := declare_global;
declare_constant := declare_constant;
declare_local := declare_local;
declare_param := declare_param;
declare_temp := declare_temp;
free_temp := free_temp;
declare_exception := declare_exception;
begin_init := begin_init;
end_init := end_init;
init_int := init_int;
init_proc := init_proc;
init_label := init_label;
init_var := init_var;
init_offset := init_offset;
init_chars := init_chars;
init_float := init_float;
import_procedure := import_procedure;
declare_procedure := declare_procedure;
begin_procedure := begin_procedure;
end_procedure := end_procedure;
begin_block := begin_block;
end_block := end_block;
note_procedure_origin := note_procedure_origin;
set_label := set_label;
jump := jump;
if_true := if_true;
if_false := if_false;
if_compare := if_compare;
case_jump := case_jump;
exit_proc := exit_proc;
load := load;
store := store;
load_address := load_address;
load_indirect := load_indirect;
store_indirect := store_indirect;
load_nil := load_nil;
load_integer := load_integer;
load_float := load_float;
compare := compare;
add := add;
subtract := subtract;
multiply := multiply;
divide := divide;
div := div;
mod := mod;
negate := negate;
abs := abs;
max := max;
min := min;
cvt_int := cvt_int;
cvt_float := cvt_float;
set_union := set_union;
set_difference := set_difference;
set_intersection := set_intersection;
set_sym_difference := set_sym_difference;
set_member := set_member;
set_compare := set_compare;
set_range := set_range;
set_singleton := set_singleton;
not := not;
and := and;
or := or;
xor := xor;
shift := shift;
shift_left := shift_left;
shift_right := shift_right;
rotate := rotate;
rotate_left := rotate_left;
rotate_right := rotate_right;
widen := widen;
chop := chop;
extract := extract;
extract_n := extract_n;
extract_mn := extract_mn;
insert := insert;
insert_n := insert_n;
insert_mn := insert_mn;
swap := swap;
pop := pop;
copy := copy;
copy_n := copy_n;
zero := zero;
zero_n := zero_n;
loophole := loophole;
abort := abort;
check_nil := check_nil;
check_lo := check_lo;
check_hi := check_hi;
check_range := check_range;
check_index := check_index;
check_eq := check_eq;
add_offset := add_offset;
index_address := index_address;
start_call_direct := start_call_direct;
call_direct := call_direct;
start_call_indirect := start_call_indirect;
call_indirect := call_indirect;
pop_param := pop_param;
pop_struct := pop_struct;
pop_static_link := pop_static_link;
load_procedure := load_procedure;
load_static_link := load_static_link;
comment := comment;
store_ordered := store_ordered;
load_ordered := load_ordered;
exchange := exchange;
compare_exchange := compare_exchange;
fence := fence;
fetch_and_op := fetch_and_op;

END;

PROCEDURE New(): T =
BEGIN
  RETURN NEW(T);
END New;

PROCEDURE get_data(self: T): REF ARRAY OF REFANY =
VAR data := self.data;
    a := NEW(REF ARRAY OF REFANY, data.size());
BEGIN
  FOR b := FIRST(a^) TO LAST(a^) DO
    a[b] := data.get(b);
  END;
  RETURN a;
END get_data;

PROCEDURE Add(self: T; a: REFANY) =
BEGIN
  self.data.addhi(a);
END Add;

PROCEDURE next_label(self: T; label_count: INTEGER := 1): Label =
VAR label := self.next_label_id;
BEGIN
  self.Add(NEW(next_label_t, label_count := label_count));
  RETURN label;
END next_label;

PROCEDURE NewVar(self: T): Var =
VAR v := NEW(TVar, tag := self.next_var);
BEGIN
  INC(self.next_var);
  RETURN v;
END NewVar;

PROCEDURE import_global(self: T; name: Name; byte_size: ByteSize; alignment: Alignment; type: Type; typeid: TypeUID): Var =
BEGIN
  self.Add(NEW(import_global_t, name := name, byte_size := byte_size, alignment := alignment, type := type, typeid := typeid));
  RETURN NewVar(self);
END import_global;

PROCEDURE declare_segment(self: T; name: Name; typeid: TypeUID; is_const: BOOLEAN): Var =
BEGIN
  self.Add(NEW(declare_segment_t, name := name, typeid := typeid, is_const := is_const));
  RETURN NewVar(self);
END declare_segment;

PROCEDURE declare_global(self: T; name: Name; byte_size: ByteSize; alignment: Alignment; typeid: Type; type: TypeUID; exported, inited: BOOLEAN): Var =
BEGIN
  self.Add(NEW(declare_global_t, name := name, byte_size := byte_size, alignment := alignment, type := type, typeid := typeid, exported := exported, inited := inited));
  RETURN NewVar(self);
END declare_global;

PROCEDURE declare_constant(self: T; name: Name; byte_size: ByteSize; alignment: Alignment; type: Type; typeid: TypeUID; exported, inited: BOOLEAN): Var =
BEGIN
  self.Add(NEW(declare_constant_t, name := name, byte_size := byte_size, alignment := alignment, type := type, typeid := typeid, exported := exported, inited := inited));
  RETURN NewVar(self);
END declare_constant;

PROCEDURE declare_local(self: T; name: Name; byte_size: ByteSize; alignment: Alignment; type: Type; typeid: TypeUID; in_memory, up_level: BOOLEAN; frequency: Frequency): Var =
BEGIN
  self.Add(NEW(declare_local_t, name := name, byte_size := byte_size, alignment := alignment, type := type, typeid := typeid, in_memory := in_memory, up_level := up_level, frequency := frequency));
RETURN NewVar(self);
END declare_local;

PROCEDURE declare_param(self: T; name: Name; byte_size: ByteSize; alignment: Alignment; type: Type; typeid: TypeUID; in_memory, up_level: BOOLEAN; frequency: Frequency): Var =
BEGIN
  self.Add(NEW(declare_param_t, name := name, byte_size := byte_size, alignment := alignment, type := type, typeid := typeid, in_memory := in_memory, up_level := up_level, frequency := frequency));
  RETURN NewVar(self);
END declare_param;

PROCEDURE declare_temp(self: T; byte_size: ByteSize; alignment: Alignment; type: Type; in_memory: BOOLEAN): Var =
BEGIN
  self.Add(NEW(declare_temp_t, byte_size := byte_size, alignment := alignment, type := type, in_memory := in_memory));
  RETURN NewVar(self);
END declare_temp;

PROCEDURE NewProc(self: T): Proc =
VAR p := NEW(TProc, tag := self.next_proc);
BEGIN
INC(self.next_proc);
RETURN p;
END NewProc;

PROCEDURE import_procedure(self: T; name: Name; n_params: INTEGER; return_type: Type; callingConvention: CallingConvention): Proc =
BEGIN
self.Add(NEW(import_procedure_t, name := name, n_params := n_params, return_type := return_type, callingConvention := callingConvention));
RETURN NewProc(self);
END import_procedure;

PROCEDURE declare_procedure(self: T; name: Name; n_params: INTEGER; return_type: Type; level: INTEGER; callingConvention: CallingConvention; exported: BOOLEAN; parent: Proc): Proc =
BEGIN
self.Add(NEW(declare_procedure_t, name := name, n_params := n_params, return_type := return_type, level := level, callingConvention := callingConvention, exported := exported, parent := NARROW(parent, TProc)));
RETURN NewProc(self);
END declare_procedure;

<*NOWARN*>PROCEDURE set_error_handler(self: T; proc: PROCEDURE(msg: TEXT)) =
BEGIN
(* nothing *)
END set_error_handler;

PROCEDURE begin_procedure(self: T; proc: Proc) =
BEGIN
self.Add(NEW(begin_procedure_t, proc := NARROW(proc, TProc)));
END begin_procedure;

PROCEDURE end_procedure(self: T; proc: Proc) =
BEGIN
self.Add(NEW(end_procedure_t, proc := NARROW(proc, TProc)));
END end_procedure;

PROCEDURE begin_unit(self: T; optimize: INTEGER) =
BEGIN
self.Add(NEW(begin_unit_t, optimize := optimize));
END begin_unit;

PROCEDURE end_unit(self: T) =
BEGIN
self.Add(NEW(end_unit_t));
END end_unit;

PROCEDURE import_unit(self: T; name: Name) =
BEGIN
self.Add(NEW(import_unit_t, name := name));
END import_unit;

<*NOWARN*>PROCEDURE export_unit(self: T; name: Name) = BEGIN END export_unit;
<*NOWARN*>PROCEDURE set_source_file(self: T; file: TEXT) = BEGIN END set_source_file;
<*NOWARN*>PROCEDURE set_source_line(self: T; line: INTEGER) = BEGIN END set_source_line;
<*NOWARN*>PROCEDURE declare_typename(self: T; typeid: TypeUID; name: Name) = BEGIN END declare_typename;
<*NOWARN*>PROCEDURE declare_array(self: T; typeid, index_typeid, element_typeid: TypeUID; bit_size: BitSize) = BEGIN END declare_array;
<*NOWARN*>PROCEDURE declare_open_array(self: T; typeid, element_typeid: TypeUID; bit_size: BitSize) = BEGIN END declare_open_array;
<*NOWARN*>PROCEDURE declare_enum(self: T; typeid: TypeUID; n_elts: INTEGER; bit_size: BitSize) = BEGIN END declare_enum;
<*NOWARN*>PROCEDURE declare_enum_elt(self: T; name: Name) = BEGIN END declare_enum_elt;
<*NOWARN*>PROCEDURE declare_packed(self: T; typeid: TypeUID; bit_size: BitSize; base: TypeUID) = BEGIN END declare_packed;
<*NOWARN*>PROCEDURE declare_record(self: T; typeid: TypeUID; bit_size: BitSize; n_fields: INTEGER) = BEGIN END declare_record;
<*NOWARN*>PROCEDURE declare_field(self: T; name: Name; bit_offset: BitOffset; bit_size: BitSize; typeid: TypeUID) = BEGIN END declare_field;
<*NOWARN*>PROCEDURE declare_set(self: T; t, domain: TypeUID; bit_size: BitSize) = BEGIN END declare_set;
<*NOWARN*>PROCEDURE declare_subrange(self: T; typeid, domain_typeid: TypeUID; READONLY min, max: Target.Int; bit_size: BitSize) = BEGIN END declare_subrange;
<*NOWARN*>PROCEDURE declare_pointer(self: T; typeid, target_typeid: TypeUID; brand: TEXT; traced: BOOLEAN) = BEGIN END declare_pointer;
<*NOWARN*>PROCEDURE declare_indirect(self: T; typeid, target_typeid: TypeUID) = BEGIN END declare_indirect;
<*NOWARN*>PROCEDURE declare_proctype(self: T; typeid: TypeUID; n_formals: INTEGER; result: TypeUID; n_raises: INTEGER; callingConvention: CallingConvention) = BEGIN END declare_proctype;
<*NOWARN*>PROCEDURE declare_formal(self: T; name: Name; typeid: TypeUID) = BEGIN END declare_formal;
<*NOWARN*>PROCEDURE declare_raises(self: T; name: Name) = BEGIN END declare_raises;
<*NOWARN*>PROCEDURE declare_object(self: T; typeid, super_typeid: TypeUID; brand: TEXT; traced: BOOLEAN; n_fields, n_methods: INTEGER; field_size: BitSize) = BEGIN END declare_object;
<*NOWARN*>PROCEDURE declare_method(self: T; name: Name; signature: TypeUID) = BEGIN END declare_method;
<*NOWARN*>PROCEDURE declare_opaque(self: T; typeid, super_typeid: TypeUID) = BEGIN END declare_opaque;
<*NOWARN*>PROCEDURE reveal_opaque(self: T; lhs_typeid, rhs_typeid: TypeUID) = BEGIN END reveal_opaque;
<*NOWARN*>PROCEDURE declare_exception(self: T; name: Name; arg_typeid: TypeUID; raise_proc: BOOLEAN; base: Var; offset: INTEGER) = BEGIN END declare_exception;
<*NOWARN*>PROCEDURE set_runtime_proc(self: T; name: Name; proc: Proc) = BEGIN END set_runtime_proc;
<*NOWARN*>PROCEDURE bind_segment(self: T; segment: Var; byte_size: ByteSize; alignment: Alignment; type: Type; exported, inited: BOOLEAN) = BEGIN END bind_segment;
<*NOWARN*>PROCEDURE free_temp(self: T; var: Var) = BEGIN END free_temp;
<*NOWARN*>PROCEDURE begin_init(self: T; var: Var) = BEGIN END begin_init;
<*NOWARN*>PROCEDURE end_init(self: T; var: Var) = BEGIN END end_init;
<*NOWARN*>PROCEDURE init_int(self: T; byte_offset: ByteOffset; READONLY value: Target.Int; type: Type) = BEGIN END init_int;
<*NOWARN*>PROCEDURE init_proc(self: T; byte_offset: ByteOffset; value: Proc) = BEGIN END init_proc;
<*NOWARN*>PROCEDURE init_label(self: T; byte_offset: ByteOffset; value: Label) = BEGIN END init_label;
<*NOWARN*>PROCEDURE init_var(self: T; byte_offset: ByteOffset; value: Var; bias: ByteOffset) = BEGIN END init_var;
<*NOWARN*>PROCEDURE init_offset(self: T; byte_offset: ByteOffset; value: Var) = BEGIN END init_offset;
<*NOWARN*>PROCEDURE init_chars(self: T; byte_offset: ByteOffset; value: TEXT) = BEGIN END init_chars;
<*NOWARN*>PROCEDURE init_float(self: T; byte_offset: ByteOffset; READONLY f: Target.Float) = BEGIN END init_float;
<*NOWARN*>PROCEDURE begin_block(self: T) = BEGIN END begin_block;
<*NOWARN*>PROCEDURE end_block(self: T) = BEGIN END end_block;
<*NOWARN*>PROCEDURE note_procedure_origin(self: T; proc: Proc) = BEGIN END note_procedure_origin;
<*NOWARN*>PROCEDURE set_label(self: T; label: Label; barrier: BOOLEAN) = BEGIN END set_label;
<*NOWARN*>PROCEDURE jump(self: T; label: Label) = BEGIN END jump;
<*NOWARN*>PROCEDURE if_true(self: T; type: IType; label: Label; frequency: Frequency) = BEGIN END if_true;
<*NOWARN*>PROCEDURE if_false(self: T; type: IType; label: Label; frequency: Frequency) = BEGIN END if_false;
<*NOWARN*>PROCEDURE if_compare(self: T; type: ZType; op: CompareOp; label: Label; frequency: Frequency) = BEGIN END if_compare;
<*NOWARN*>PROCEDURE case_jump(self: T; type: IType; READONLY labels: ARRAY OF Label) = BEGIN END case_jump;
<*NOWARN*>PROCEDURE exit_proc(self: T; type: Type) = BEGIN END exit_proc;
<*NOWARN*>PROCEDURE load(self: T; var: Var; byte_offset: ByteOffset; mtype: MType; ztype: ZType) = BEGIN END load;
<*NOWARN*>PROCEDURE store(self: T; var: Var; byte_offset: ByteOffset; ztype: ZType; mtype: MType) = BEGIN END store;
<*NOWARN*>PROCEDURE load_address(self: T; var: Var; byte_offset: ByteOffset) = BEGIN END load_address;
<*NOWARN*>PROCEDURE load_indirect(self: T; byte_offset: ByteOffset; mtype: MType; ztype: ZType) = BEGIN END load_indirect;
<*NOWARN*>PROCEDURE store_indirect(self: T; byte_offset: ByteOffset; ztype: ZType; mtype: MType) = BEGIN END store_indirect;
<*NOWARN*>PROCEDURE load_nil(self: T) = BEGIN END load_nil;
<*NOWARN*>PROCEDURE load_integer(self: T; type: IType; READONLY int: Target.Int) = BEGIN END load_integer;
<*NOWARN*>PROCEDURE load_float(self: T; type: RType; READONLY float: Target.Float) = BEGIN END load_float;
<*NOWARN*>PROCEDURE compare(self: T; ztype: ZType; itype: IType; op: CompareOp) = BEGIN END compare;
<*NOWARN*>PROCEDURE add(self: T; type: AType) = BEGIN END add;
<*NOWARN*>PROCEDURE subtract(self: T; type: AType) = BEGIN END subtract;
<*NOWARN*>PROCEDURE multiply(self: T; type: AType) = BEGIN END multiply;
<*NOWARN*>PROCEDURE divide(self: T; type: RType) = BEGIN END divide;
<*NOWARN*>PROCEDURE div(self: T; type: IType; a, b: Sign) = BEGIN END div;
<*NOWARN*>PROCEDURE mod(self: T; type: IType; a, b: Sign) = BEGIN END mod;
<*NOWARN*>PROCEDURE negate(self: T; type: AType) = BEGIN END negate;
<*NOWARN*>PROCEDURE abs(self: T; type: AType) = BEGIN END abs;
<*NOWARN*>PROCEDURE max(self: T; type: ZType) = BEGIN END max;
<*NOWARN*>PROCEDURE min(self: T; type: ZType) = BEGIN END min;
<*NOWARN*>PROCEDURE cvt_int(self: T; rtype: RType; itype: IType; op: ConvertOp) = BEGIN END cvt_int;
<*NOWARN*>PROCEDURE cvt_float(self: T; atype: AType; rtype: RType) = BEGIN END cvt_float;
<*NOWARN*>PROCEDURE set_union(self: T; byte_size: ByteSize) = BEGIN END set_union;
<*NOWARN*>PROCEDURE set_difference(self: T; byte_size: ByteSize) = BEGIN END set_difference;
<*NOWARN*>PROCEDURE set_intersection(self: T; byte_size: ByteSize) = BEGIN END set_intersection;
<*NOWARN*>PROCEDURE set_sym_difference(self: T; byte_size: ByteSize) = BEGIN END set_sym_difference;
<*NOWARN*>PROCEDURE set_member(self: T; byte_size: ByteSize; type: IType) = BEGIN END set_member;
<*NOWARN*>PROCEDURE set_compare(self: T; byte_size: ByteSize; op: CompareOp; type: IType) = BEGIN END set_compare;
<*NOWARN*>PROCEDURE set_range(self: T; byte_size: ByteSize; type: IType) = BEGIN END set_range;
<*NOWARN*>PROCEDURE set_singleton(self: T; byte_size: ByteSize; type: IType) = BEGIN END set_singleton;
<*NOWARN*>PROCEDURE not(self: T; type: IType) = BEGIN END not;
<*NOWARN*>PROCEDURE and(self: T; type: IType) = BEGIN END and;
<*NOWARN*>PROCEDURE or(self: T; type: IType) = BEGIN END or;
<*NOWARN*>PROCEDURE xor(self: T; type: IType) = BEGIN END xor;
<*NOWARN*>PROCEDURE shift(self: T; type: IType) = BEGIN END shift;
<*NOWARN*>PROCEDURE shift_left(self: T; type: IType) = BEGIN END shift_left;
<*NOWARN*>PROCEDURE shift_right(self: T; type: IType) = BEGIN END shift_right;
<*NOWARN*>PROCEDURE rotate(self: T; type: IType) = BEGIN END rotate;
<*NOWARN*>PROCEDURE rotate_left(self: T; type: IType) = BEGIN END rotate_left;
<*NOWARN*>PROCEDURE rotate_right(self: T; type: IType) = BEGIN END rotate_right;
<*NOWARN*>PROCEDURE widen(self: T; sign: BOOLEAN) = BEGIN END widen;
<*NOWARN*>PROCEDURE chop(self: T) = BEGIN END chop;
<*NOWARN*>PROCEDURE extract(self: T; type: IType; sign: BOOLEAN) = BEGIN END extract;
<*NOWARN*>PROCEDURE extract_n(self: T; type: IType; sign: BOOLEAN; n: CARDINAL) = BEGIN END extract_n;
<*NOWARN*>PROCEDURE extract_mn(self: T; type: IType; sign: BOOLEAN; m, n: CARDINAL) = BEGIN END extract_mn;
<*NOWARN*>PROCEDURE insert(self: T; type: IType) = BEGIN END insert;
<*NOWARN*>PROCEDURE insert_n(self: T; type: IType; n: CARDINAL) = BEGIN END insert_n;
<*NOWARN*>PROCEDURE insert_mn(self: T; type: IType; m, n: CARDINAL) = BEGIN END insert_mn;
<*NOWARN*>PROCEDURE swap(self: T; a, b: Type) = BEGIN END swap;
<*NOWARN*>PROCEDURE pop(self: T; type: Type) = BEGIN END pop;
<*NOWARN*>PROCEDURE copy_n(self: T; itype: IType; mtype: MType; overlap: BOOLEAN) = BEGIN END copy_n;
<*NOWARN*>PROCEDURE copy(self: T; n: INTEGER; mtype: MType; overlap: BOOLEAN) = BEGIN END copy;
<*NOWARN*>PROCEDURE zero_n(self: T; itype: IType; mtype: MType) = BEGIN END zero_n;
<*NOWARN*>PROCEDURE zero(self: T; n: INTEGER; type: MType) = BEGIN END zero;
<*NOWARN*>PROCEDURE loophole(self: T; from, to: ZType) = BEGIN END loophole;
<*NOWARN*>PROCEDURE abort(self: T; code: RuntimeError) = BEGIN END abort;
<*NOWARN*>PROCEDURE check_nil(self: T; code: RuntimeError) = BEGIN END check_nil;
<*NOWARN*>PROCEDURE check_lo(self: T; type: IType; READONLY i: Target.Int; code: RuntimeError) = BEGIN END check_lo;
<*NOWARN*>PROCEDURE check_hi(self: T; type: IType; READONLY i: Target.Int; code: RuntimeError) = BEGIN END check_hi;
<*NOWARN*>PROCEDURE check_range(self: T; type: IType; READONLY a, b: Target.Int; code: RuntimeError) = BEGIN END check_range;
<*NOWARN*>PROCEDURE check_index(self: T; type: IType; code: RuntimeError) = BEGIN END check_index;
<*NOWARN*>PROCEDURE check_eq(self: T; type: IType; code: RuntimeError) = BEGIN END check_eq;
<*NOWARN*>PROCEDURE add_offset(self: T; i: INTEGER) = BEGIN END add_offset;
<*NOWARN*>PROCEDURE index_address(self: T; type: IType; size: INTEGER) = BEGIN END index_address;
<*NOWARN*>PROCEDURE start_call_direct(self: T; proc: Proc; level: INTEGER; type: Type) = BEGIN END start_call_direct;
<*NOWARN*>PROCEDURE start_call_indirect(self: T; type: Type; callingConvention: CallingConvention) = BEGIN END start_call_indirect;
<*NOWARN*>PROCEDURE pop_param(self: T; type: MType) = BEGIN END pop_param;
<*NOWARN*>PROCEDURE pop_struct(self: T; typeid: TypeUID; byte_size: ByteSize; alignment: Alignment) = BEGIN END pop_struct;
<*NOWARN*>PROCEDURE pop_static_link(self: T) = BEGIN END pop_static_link;
<*NOWARN*>PROCEDURE call_direct(self: T; proc: Proc; type: Type) = BEGIN END call_direct;
<*NOWARN*>PROCEDURE call_indirect(self: T; type: Type; callingConvention: CallingConvention) = BEGIN END call_indirect;
<*NOWARN*>PROCEDURE load_procedure(self: T; proc: Proc) = BEGIN END load_procedure;
<*NOWARN*>PROCEDURE load_static_link(self: T; proc: Proc) = BEGIN END load_static_link;
<*NOWARN*>PROCEDURE comment(self: T; a, b, c, d: TEXT := NIL) = BEGIN END comment;
<*NOWARN*>PROCEDURE store_ordered(self: T; ztype: ZType; mtype: MType; order: MemoryOrder) = BEGIN END store_ordered;
<*NOWARN*>PROCEDURE load_ordered(self: T; mtype: MType; ztype: ZType; order: MemoryOrder) = BEGIN END load_ordered;
<*NOWARN*>PROCEDURE exchange(self: T; mtype: MType; ztype: ZType; order: MemoryOrder) = BEGIN END exchange;
<*NOWARN*>PROCEDURE compare_exchange(self: T; mtype: MType; ztype: ZType; r: IType; success, failure: MemoryOrder) = BEGIN END compare_exchange;
<*NOWARN*>PROCEDURE fence(self: T; order: MemoryOrder) = BEGIN END fence;
<*NOWARN*>PROCEDURE fetch_and_op(self: T; op: AtomicOp; mtype: MType; ztype: ZType; order: MemoryOrder) = BEGIN END fetch_and_op;

BEGIN
END M3CG_MultiPass.

