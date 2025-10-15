package('ojlogger')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')
  set_kind('library')

  add_urls('https://github.com/kozharskyad/ojlogger.git')
  add_versions('1.0.0', '99053d59aaf5ec4cdb3a30a2838ea3d4299ded15')

  add_deps('objfw')

  on_install(function (package)
    import('package.tools.xmake').install(package)
  end)
