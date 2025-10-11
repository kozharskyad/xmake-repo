package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', 'cde4aa5efb2ec11af3e60c19ae0c69926422915f')

  on_install(function (package)
    local configs = {}
    if package:config('static') then
      configs.kind = 'static'
    end
    import('package.tools.xmake').install(package, configs)
  end)
