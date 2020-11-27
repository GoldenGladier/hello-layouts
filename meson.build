# project name and programming language
project('com.github.GoldenGladier.hello-layouts', 'vala', 'c')

# Create a new executable, list the files we want to compile, list the dependencies we need, and install
executable(
    meson.project_name(),
    'src/Application.vala',
    dependencies: [
        dependency('granite'),
        dependency('gtk+-3.0')
    ],
    install: true
)

# Install our .desktop file so the Applications Menu will see it
install_data(
    join_paths('data', 'hello-layouts.desktop'),
    install_dir: join_paths(get_option('datadir'), 'applications'),
    rename: meson.project_name() + '.desktop'
)