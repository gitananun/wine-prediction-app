
import os


def main():
    # Change the app mode

    mode = input('Please enter build app mode: ')
    app_modes = ('dev', 'Dev', 'release', 'Release')

    if(mode not in app_modes):
        print('\033[91m' + 'App build modes: ' +
              '\033[93m' + str(app_modes) + '\033[93m')
        return

    code = "import 'package:barter/ui/enums/app_mode.dart'; const AppMode APP_MODE = AppMode.{mode};".format(
        mode=mode.capitalize()
    )

    file = open('lib/env.dart', 'w')
    file.write(code)
    file.close()

    print('\033[94m' + 'Changed successfully to ' +
          '\033[92m' + mode + '\033[0m')
    print('\n')

    # Run CLI commands
    way = input('Enter preffered way to extract: ')
    ways = ('git', 'Git', 'local', 'Local')

    if(way not in ways):
        print('\033[91m' + 'Valid ways: ' +
              '\033[93m' + str(ways) + '\033[93m')
        return

    print('\033[92m' + 'Build started...' + '\033[0m')

    if(way == 'git' or way == 'Git'):
        os.system('git add . && git commit -m "App Build"')
        os.system('git push')
        return

    os.system('flutter build apk')


if __name__ == '__main__':
    main()
