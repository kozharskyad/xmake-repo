package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', '97c7d7af46edb4de77dde70b89280036ead218f1')

  add_deps('objfw')
  add_includedirs('include')

  on_install(function (package)
    import('package.tools.xmake').install(package)
    os.cp('src/include', package:installdir())
  end)
