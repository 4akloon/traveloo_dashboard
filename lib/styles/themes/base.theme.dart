part of '../styles.dart';

ThemeData getTheme(AppColors colors) => ThemeData(
      // useMaterial3: true,
      brightness: colors.brightness,
      primarySwatch: colors.swatch,
      indicatorColor: colors.primary,
      primaryColor: colors.primary,
      toggleableActiveColor: colors.primary,
      splashColor: colors.primary.withOpacity(0.1),
      highlightColor: colors.primary.withOpacity(0.1),
      expansionTileTheme: const ExpansionTileThemeData(
        childrenPadding: EdgeInsets.all(16),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: colors.white,
        elevation: 0,
      ),
      cardTheme: CardTheme(
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.zero,
        shadowColor: Colors.black.withOpacity(.05),
        elevation: 5,
        color: colors.card,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return colors.darkGrey;
            } else if (states.contains(MaterialState.disabled)) {
              return colors.darkGrey.withOpacity(0.3);
            }
            return colors.secondary;
          },
        ),
        trackColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return colors.primary.withOpacity(0.3);
            }
            return colors.primary;
          },
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colors.white,
      ),
      bottomAppBarColor: colors.white,
      backgroundColor: colors.background,
      scaffoldBackgroundColor: colors.background,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 11, horizontal: 16),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size(36, 36),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => colors.accent
                .withOpacity(states.contains(MaterialState.disabled) ? 0.3 : 1),
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) => colors.white
                .withOpacity(states.contains(MaterialState.disabled) ? 0.3 : 1),
          ),
          textStyle: MaterialStateProperty.all(AppTextStyles.body.w500),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => colors.white
                .withOpacity(states.contains(MaterialState.disabled) ? 0.3 : 1),
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) => colors.accent
                .withOpacity(states.contains(MaterialState.disabled) ? 0.3 : 1),
          ),
          textStyle: MaterialStateProperty.all(AppTextStyles.label.w500),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
      fontFamily: 'Work Sans',
    );
