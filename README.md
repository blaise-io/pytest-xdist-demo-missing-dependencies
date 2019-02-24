```log
/Users/blaise/env/pytest-xdist-demo-missing-dependencies $ ./run.sh 

Running virtualenv with interpreter /usr/local/bin/python3
Using base prefix '/Users/blaise/.pyenv/versions/3.7.2'
/usr/local/lib/python2.7/site-packages/virtualenv.py:1041: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
New python executable in /Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/bin/python3
Also creating executable in /Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/bin/python
Installing setuptools, pip, wheel...done.
Collecting pytest
  Using cached https://files.pythonhosted.org/packages/51/b2/2fa8e8b179c792c457c2f7800f1313bfbd34f515e3a833e6083121844c14/pytest-4.3.0-py2.py3-none-any.whl
Collecting pytest-xdist
  Using cached https://files.pythonhosted.org/packages/fb/24/b71217c2083beca1f3b1fb8b32030c68ef189a718034bafe6b5895daf6a8/pytest_xdist-1.26.1-py2.py3-none-any.whl
Collecting more-itertools>=4.0.0; python_version > "2.7" (from pytest)
  Using cached https://files.pythonhosted.org/packages/ae/d4/d6bad4844831943dd667510947712750004525c5807711982f4ec390da2b/more_itertools-6.0.0-py3-none-any.whl
Collecting six>=1.10.0 (from pytest)
  Using cached https://files.pythonhosted.org/packages/73/fb/00a976f728d0d1fecfe898238ce23f502a721c0ac0ecfedb80e0d88c64e9/six-1.12.0-py2.py3-none-any.whl
Requirement already satisfied: setuptools in ./.env/lib/python3.7/site-packages (from pytest) (40.8.0)
Collecting pluggy>=0.7 (from pytest)
  Using cached https://files.pythonhosted.org/packages/84/e8/4ddac125b5a0e84ea6ffc93cfccf1e7ee1924e88f53c64e98227f0af2a5f/pluggy-0.9.0-py2.py3-none-any.whl
Collecting atomicwrites>=1.0 (from pytest)
  Using cached https://files.pythonhosted.org/packages/52/90/6155aa926f43f2b2a22b01be7241be3bfd1ceaf7d0b3267213e8127d41f4/atomicwrites-1.3.0-py2.py3-none-any.whl
Collecting py>=1.5.0 (from pytest)
  Using cached https://files.pythonhosted.org/packages/76/bc/394ad449851729244a97857ee14d7cba61ddb268dce3db538ba2f2ba1f0f/py-1.8.0-py2.py3-none-any.whl
Collecting attrs>=17.4.0 (from pytest)
  Using cached https://files.pythonhosted.org/packages/3a/e1/5f9023cc983f1a628a8c2fd051ad19e76ff7b142a0faf329336f9a62a514/attrs-18.2.0-py2.py3-none-any.whl
Collecting execnet>=1.1 (from pytest-xdist)
  Using cached https://files.pythonhosted.org/packages/f9/76/3343e69a2a1602052f587898934e5fea395d22310d39c07955596597227c/execnet-1.5.0-py2.py3-none-any.whl
Collecting pytest-forked (from pytest-xdist)
  Using cached https://files.pythonhosted.org/packages/3f/55/ef92c340e723495dbee91d749903d2b7950b49c501943296257246d7d880/pytest_forked-1.0.2-py2.py3-none-any.whl
Collecting apipkg>=1.4 (from execnet>=1.1->pytest-xdist)
  Using cached https://files.pythonhosted.org/packages/67/08/4815a09603fc800209431bec5b8bd2acf2f95abdfb558a44a42507fb94da/apipkg-1.5-py2.py3-none-any.whl
Installing collected packages: more-itertools, six, pluggy, atomicwrites, py, attrs, pytest, apipkg, execnet, pytest-forked, pytest-xdist
Successfully installed apipkg-1.5 atomicwrites-1.3.0 attrs-18.2.0 execnet-1.5.0 more-itertools-6.0.0 pluggy-0.9.0 py-1.8.0 pytest-4.3.0 pytest-forked-1.0.2 pytest-xdist-1.26.1 six-1.12.0
Sending build context to Docker daemon   5.12kB
Step 1/11 : FROM alpine:3.9
 ---> caf27325b298
Step 2/11 : RUN apk --update add --no-cache python3 openssh
 ---> Using cache
 ---> 760a70843764
Step 3/11 : RUN sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config
 ---> Using cache
 ---> 5b31b1ccaec1
Step 4/11 : RUN echo "root:root" | chpasswd
 ---> Using cache
 ---> 01d24c05a3d7
Step 5/11 : RUN /usr/bin/ssh-keygen -A
 ---> Using cache
 ---> 72c79352bc3e
Step 6/11 : RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_key
 ---> Using cache
 ---> cfcdc6ed18f8
Step 7/11 : RUN passwd -d root
 ---> Using cache
 ---> 8b2d913043c7
Step 8/11 : RUN echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config
 ---> Using cache
 ---> e21a6e6ee660
Step 9/11 : RUN echo "PubkeyAuthentication no" >> /etc/ssh/sshd_config
 ---> Using cache
 ---> 9e99d6112080
Step 10/11 : EXPOSE 22
 ---> Using cache
 ---> bdbb8bc50bef
Step 11/11 : CMD /usr/sbin/sshd -D
 ---> Using cache
 ---> 647637dc67c4
Successfully built 647637dc67c4
Successfully tagged remote-node:latest
cb884bc34bfeba6ccef8a8428e0a16abbba7a2e5e045ebdffe05eea280ad70a9
=========================================== test session starts ===========================================
platform darwin -- Python 3.7.2, pytest-4.3.0, py-1.8.0, pluggy-0.9.0 -- /Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/bin/python3
cachedir: .pytest_cache
rootdir: /Users/blaise/env/pytest-xdist-demo-missing-dependencies, inifile:
plugins: xdist-1.26.1, forked-1.0.2
[gw0] linux Python 3.6.8 cwd: /root/pyexecnetcache
gw0 Cssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_xmlgen.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_process/cmdexec.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_process/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_process/forkedfunc.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_process/killproc.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_version.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_vendored_packages/apipkg.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_vendored_packages/iniconfig.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_vendored_packages/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_path/local.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_path/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_path/common.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_path/svnurl.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_path/svnwc.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_path/cacheutil.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_error.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_log/log.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_log/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_log/warning.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/__metainfo.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_code/_assertionold.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_code/code.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_code/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_code/assertion.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_code/_assertionnew.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_code/source.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_code/_py2traceback.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/test.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_io/saferepr.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_io/terminalwriter.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_io/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_io/capture.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_std.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= py/_builtin.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= pytest.py/
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/skipping.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/resultlog.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/logging.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/unittest.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/runner.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/helpconfig.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/pastebin.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/compat.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/_version.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/terminal.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/config/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/config/findpaths.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/config/exceptions.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/config/argparsing.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/warnings.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/deprecated.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/recwarn.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/mark/legacy.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/mark/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/mark/evaluate.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/mark/structures.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/tmpdir.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/_code/code.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/_code/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/_code/source.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/_code/_py2traceback.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/debugging.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/assertion/truncate.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/assertion/util.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/assertion/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/assertion/rewrite.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/python_api.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/_argcomplete.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/capture.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/hookspec.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/_io/saferepr.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/_io/__init__.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/pytester.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/outcomes.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/stepwise.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/junitxml.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/python.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/reports.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/doctest.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/setuponly.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/nose.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/nodes.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/main.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/monkeypatch.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/setupplan.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/pathlib.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/freeze_support.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/fixtures.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/cacheprovider.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= _pytest/warning_types.py
ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3:pyexecnetcache <= tests/test_dummy.py
[gw0] node down: Traceback (most recent call last):
  File "<string>", line 1072, in executetask
  File "<string>", line 1, in do_exec
  File "<remote exec>", line 13, in <module>
  File "/root/pyexecnetcache/_pytest/hookspec.py", line 2, in <module>
    from pluggy import HookspecMarker
ModuleNotFoundError: No module named 'pluggy'

Worker restarting disabled
INTERNALERROR> Traceback (most recent call last):
INTERNALERROR>   File "/Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/lib/python3.7/site-packages/_pytest/main.py", line 210, in wrap_session
INTERNALERROR>     session.exitstatus = doit(config, session) or 0
INTERNALERROR>   File "/Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/lib/python3.7/site-packages/_pytest/main.py", line 250, in _main
INTERNALERROR>     config.hook.pytest_runtestloop(session=session)
INTERNALERROR>   File "/Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/lib/python3.7/site-packages/pluggy/hooks.py", line 289, in __call__
INTERNALERROR>     return self._hookexec(self, self.get_hookimpls(), kwargs)
INTERNALERROR>   File "/Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/lib/python3.7/site-packages/pluggy/manager.py", line 68, in _hookexec
INTERNALERROR>     return self._inner_hookexec(hook, methods, kwargs)
INTERNALERROR>   File "/Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/lib/python3.7/site-packages/pluggy/manager.py", line 62, in <lambda>
INTERNALERROR>     firstresult=hook.spec.opts.get("firstresult") if hook.spec else False,
INTERNALERROR>   File "/Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/lib/python3.7/site-packages/pluggy/callers.py", line 208, in _multicall
INTERNALERROR>     return outcome.get_result()
INTERNALERROR>   File "/Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/lib/python3.7/site-packages/pluggy/callers.py", line 80, in get_result
INTERNALERROR>     raise ex[1].with_traceback(ex[2])
INTERNALERROR>   File "/Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/lib/python3.7/site-packages/pluggy/callers.py", line 187, in _multicall
INTERNALERROR>     res = hook_impl.function(*args)
INTERNALERROR>   File "/Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/lib/python3.7/site-packages/xdist/dsession.py", line 115, in pytest_runtestloop
INTERNALERROR>     self.loop_once()
INTERNALERROR>   File "/Users/blaise/env/pytest-xdist-demo-missing-dependencies/.env/lib/python3.7/site-packages/xdist/dsession.py", line 127, in loop_once
INTERNALERROR>     raise RuntimeError("Unexpectedly no active workers available")
INTERNALERROR> RuntimeError: Unexpectedly no active workers available

====================================== no tests ran in 0.61 seconds =======================================
run-remote-node
```
