package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', '509015486ae25fafc54b1532c74958f4e9250772')

  add_deps('objfw')
  add_includedirs('include')

  on_install(function (package)
    import('package.tools.xmake').install(package)
    os.cp('src/include', package:installdir())
  end)
