X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/29
Message-ID: <9cf3974b-eaef-40da-a3bf-85cd992cb8cf@oracle.com>
Date: Thu, 22 Oct 2026 14:40:45 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Python 3.15.1, 3.14.9 and 3.13.17 are out
Content-Type: text/plain; charset=utf-8

https://discuss.python.org/t/python-3-15-1-3-14-9-and-3-13-17-are-out/109595
announces:
> Here are expedited security releases of Python 3.15 and 3.14, and a
> special security release of 3.13.
> 
>     Python 3.15.1
>     Python 3.14.9
>     Python 3.13.17
> 
> They all upgrade the bundled pip to version 26.2.2, which includes
> certifi 2026.10.19 to address the eMudhra / emSign CA certificate
> security incident.
> 
> We don’t normally update pip for security releases like Python 3.13
> because of backward compatibility concerns, but since 3.13 only just
> entered security-only mode, doing a special release with installers
> seemed prudent.
> 
> See the Discourse announcement for more information.
> 
> For all existing virtual environments on your system, please upgrade
> pip and uv to the latest versions.
> 
> To upgrade pip securely within a virtualenv:
> 
> python -m pip install "pip @ https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl#sha256=fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70"
> 
> If you cannot immediately upgrade to this release, you can upgrade
> certificates for a Python 3.15 macOS installation and pip itself via:
> 
> /Library/Frameworks/Python.framework/Versions/3.15/bin/python3.15 -m pip install "pip @ https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl#sha256=fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70"
> /Library/Frameworks/Python.framework/Versions/3.15/bin/python3.15 -m pip install --upgrade certifi
> /Library/Frameworks/PythonT.framework/Versions/3.15/bin/python3.15t -m pip install "pip @ https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl#sha256=fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70"
> 
> For 3.14:
> 
> /Library/Frameworks/Python.framework/Versions/3.14/bin/python3.14 -m pip install "pip @ https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl#sha256=fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70"
> /Library/Frameworks/Python.framework/Versions/3.14/bin/python3.14 -m pip install --upgrade certifi
> /Library/Frameworks/PythonT.framework/Versions/3.14/bin/python3.14t -m pip install "pip @ https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl#sha256=fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70"
> 
> For 3.13:
> 
> /Library/Frameworks/Python.framework/Versions/3.13/bin/python3.13 -m pip install "pip @ https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl#sha256=fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70"
> /Library/Frameworks/Python.framework/Versions/3.13/bin/python3.13 -m pip install --upgrade certifi
> /Library/Frameworks/PythonT.framework/Versions/3.13/bin/python3.13t -m pip install "pip @ https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl#sha256=fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70"
> 
> macOS 27.0 IDLE and tkinter
> 
> Additionally, the macOS installer for this release is built with a
> pre-release of Tk, fixing a possible hang on macOS 27.0 in
> applications using tkinter, like IDLE, in older releases.
> 
> Enjoy the new release
> 
> Thanks to all of the many volunteers who help make Python development
> and these releases possible! Please consider supporting our efforts by
> volunteering yourself or through organisation contributions to the
> Python Software Foundation.
> 
> Your certified release team,
> Hugo van Kemenade
> Thomas Wouters
> Ned Deily
> Steve Dower
