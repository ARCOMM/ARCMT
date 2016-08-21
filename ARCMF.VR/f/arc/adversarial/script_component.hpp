#define QUOTE(VAR) #VAR

#define GVAR(VAR) arc_adv_##VAR
#define QGVAR(VAR) QUOTE(GVAR(VAR))

#define FUNC(VAR) arc_adv_fnc_##VAR
#define QFUNC(VAR) QUOTE(FUNC(VAR))
