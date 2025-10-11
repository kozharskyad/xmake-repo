package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', '7a002761f54fe7bcae57b2f2eb56961868ee229e')

  add_deps('objfw')
  add_deps('omsfw')

  on_install(function (package)
    import('package.tools.xmake').install(package)
  end)
