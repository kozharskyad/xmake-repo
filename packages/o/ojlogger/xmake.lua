package('ojlogger')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')
  set_kind('library')

  add_urls('https://github.com/kozharskyad/ojlogger.git')
  add_versions('1.0.0', '0514efeadf5278ecf55711fa4614b0fed7bd2caa')

  add_deps('objfw')

  on_install(function (package)
    import('package.tools.xmake').install(package)
  end)
