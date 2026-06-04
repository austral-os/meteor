winshadows = shared_module(
    'winshadows',
    [
        'winshadows.cpp',
        'node.cpp',
        'renderer.cpp',
        'shaders.glsl.cpp',
    ],
    include_directories: [wayfire_api_inc, wayfire_conf_inc],
    dependencies: [wlroots, pixman, wfconfig, plugin_pch_dep],
    install: true,
    install_dir: join_paths(get_option('libdir'), 'meteor')
)
