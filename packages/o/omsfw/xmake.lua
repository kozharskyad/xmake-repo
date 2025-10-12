package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', '4de2c6dd01adde154fe5fede8ac18f882153ec01')

  add_deps('objfw', 'omsfw')

  on_install(function (package)
    import('package.tools.xmake').install(package)
    -- os.cp('src/include', package:installdir())
  end)
