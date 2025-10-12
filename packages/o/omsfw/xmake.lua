package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', 'fe4382d2424c695b7a1a7b5109ddb4d3490ec5ad')

  add_deps('objfw')

  on_install(function (package)
    import('package.tools.xmake').install(package)
    -- os.cp('src/include', package:installdir())
  end)
