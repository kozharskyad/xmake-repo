package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')
  set_kind('library')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', '210c5de1f441faa3658fd934a4e25d5a16aea1ff')

  add_deps('objfw')

  on_install(function (package)
    import('package.tools.xmake').install(package)
  end)
