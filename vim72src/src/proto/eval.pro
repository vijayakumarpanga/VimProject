/* eval.c */
void eval_init __ARGS((void));
void eval_clear __ARGS((void));
char_u *func_name __ARGS((void *cookie));
linenr_T *func_breakpoint __ARGS((void *cookie));
int *func_dbg_tick __ARGS((void *cookie));
int func_level __ARGS((void *cookie));
int current_func_returned __ARGS((void));
void set_internal_string_var __ARGS((char_u *name, char_u *value));
int var_redir_start __ARGS((char_u *name, int append));
void var_redir_str __ARGS((char_u *value, int value_len));
void var_redir_stop __ARGS((void));
int eval_charconvert __ARGS((char_u *enc_from, char_u *enc_to, char_u *fname_from, char_u *fname_to));
int eval_printexpr __ARGS((char_u *fname, char_u *args));
void eval_diff __ARGS((char_u *origfile, char_u *newfile, char_u *outfile));
void eval_patch __ARGS((char_u *origfile, char_u *difffile, char_u *outfile));
int eval_to_bool __ARGS((char_u *arg, int *error, char_u **nextcmd, int skip));
char_u *eval_to_string_skip __ARGS((char_u *arg, char_u **nextcmd, int skip));
int skip_expr __ARGS((char_u **pp));
char_u *eval_to_string __ARGS((char_u *arg, char_u **nextcmd, int dolist));
char_u *eval_to_string_safe __ARGS((char_u *arg, char_u **nextcmd, int use_sandbox));
int eval_to_number __ARGS((char_u *expr));
list_T *eval_spell_expr __ARGS((char_u *badword, char_u *expr));
int get_spellword __ARGS((list_T *list, char_u **pp));
typval_T *eval_expr __ARGS((char_u *arg, char_u **nextcmd));
void *call_func_retstr __ARGS((char_u *func, int argc, char_u **argv, int safe));
long call_func_retnr __ARGS((char_u *func, int argc, char_u **argv, int safe));
void *call_func_retlist __ARGS((char_u *func, int argc, char_u **argv, int safe));
void *save_funccal __ARGS((void));
void restore_funccal __ARGS((void *vfc));
void prof_child_enter __ARGS((proftime_T *tm));
void prof_child_exit __ARGS((proftime_T *tm));
int eval_foldexpr __ARGS((char_u *arg, int *cp));
void ex_let __ARGS((exarg_T *eap));
void *eval_for_line __ARGS((char_u *arg, int *errp, char_u **nextcmdp, int skip));
int next_for_item __ARGS((void *fi_void, char_u *arg));
void free_for_info __ARGS((void *fi_void));
void set_context_for_expression __ARGS((expand_T *xp, char_u *arg, cmdidx_T cmdidx));
void ex_call __ARGS((exarg_T *eap));
void ex_unlet __ARGS((exarg_T *eap));
void ex_lockvar __ARGS((exarg_T *eap));
int do_unlet __ARGS((char_u *name, int forceit));
void del_menutrans_vars __ARGS((void));
char_u *get_user_var_name __ARGS((expand_T *xp, int idx));
list_T *list_alloc __ARGS((void));
void list_unref __ARGS((list_T *l));
void list_free __ARGS((list_T *l, int recurse));
dictitem_T *dict_lookup __ARGS((hashitem_T *hi));
int list_append_dict __ARGS((list_T *list, dict_T *dict));
int garbage_collect __ARGS((void));
dict_T *dict_alloc __ARGS((void));
int dict_add_nr_str __ARGS((dict_T *d, char *key, long nr, char_u *str));
char_u *get_dict_string __ARGS((dict_T *d, char_u *key, int save));
long get_dict_number __ARGS((dict_T *d, char_u *key));
char_u *get_function_name __ARGS((expand_T *xp, int idx));
char_u *get_expr_name __ARGS((expand_T *xp, int idx));
long do_searchpair __ARGS((char_u *spat, char_u *mpat, char_u *epat, int dir, char_u *skip, int flags, pos_T *match_pos, linenr_T lnum_stop, long time_limit));
void set_vim_var_nr __ARGS((int idx, long val));
long get_vim_var_nr __ARGS((int idx));
char_u *get_vim_var_str __ARGS((int idx));
void set_vcount __ARGS((long count, long count1));
void set_vim_var_string __ARGS((int idx, char_u *val, int len));
void set_reg_var __ARGS((int c));
char_u *v_exception __ARGS((char_u *oldval));
char_u *v_throwpoint __ARGS((char_u *oldval));
char_u *set_cmdarg __ARGS((exarg_T *eap, char_u *oldarg));
void free_tv __ARGS((typval_T *varp));
void clear_tv __ARGS((typval_T *varp));
long get_tv_number_chk __ARGS((typval_T *varp, int *denote));
char_u *get_tv_string_chk __ARGS((typval_T *varp));
char_u *get_var_value __ARGS((char_u *name));
void new_script_vars __ARGS((scid_T id));
void init_var_dict __ARGS((dict_T *dict, dictitem_T *dict_var));
void vars_clear __ARGS((hashtab_T *ht));
void ex_echo __ARGS((exarg_T *eap));
void ex_echohl __ARGS((exarg_T *eap));
void ex_execute __ARGS((exarg_T *eap));
void ex_function __ARGS((exarg_T *eap));
void free_all_functions __ARGS((void));
void func_dump_profile __ARGS((FILE *fd));
char_u *get_user_func_name __ARGS((expand_T *xp, int idx));
void ex_delfunction __ARGS((exarg_T *eap));
void ex_return __ARGS((exarg_T *eap));
int do_return __ARGS((exarg_T *eap, int reanimate, int is_cmd, void *rettv));
void discard_pending_return __ARGS((void *rettv));
char_u *get_return_cmd __ARGS((void *rettv));
char_u *get_func_line __ARGS((int c, void *cookie, int indent));
void func_line_start __ARGS((void *cookie));
void func_line_exec __ARGS((void *cookie));
void func_line_end __ARGS((void *cookie));
int func_has_ended __ARGS((void *cookie));
int func_has_abort __ARGS((void *cookie));
int read_viminfo_varlist __ARGS((vir_T *virp, int writing));
void write_viminfo_varlist __ARGS((FILE *fp));
int store_session_globals __ARGS((FILE *fd));
void last_set_msg __ARGS((scid_T scriptID));
int modify_fname __ARGS((char_u *src, int *usedlen, char_u **fnamep, char_u **bufp, int *fnamelen));
char_u *do_string_sub __ARGS((char_u *str, char_u *pat, char_u *sub, char_u *flags));
/* vim: set ft=c : */
