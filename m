X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/3
Message-ID: <CAAnjWm+uz3azT4MEhO060eUcw5ZRu=Htn2ofrYh=3nu=UYZwAw@mail.gmail.com>
Date: Tue, 27 Oct 2026 19:52:58 -0400
From: Kevin Riggle <kevinr@...plexsystems.group>
To: oss-security@...ts.openwall.com
Subject: Re: Information for Python users regarding eMudhra / emSign CA certificate security incident
Content-Type: text/plain; charset=utf-8

> A comment on it from Christian Helms adds:
> > Just to stress one point: users must update pip to >= 26.2.2.
> >
> > pip always loads the CA certificates from its vendored certifi in
> > addition to the system trust store, and there is no supported way to
> > disable this. REQUESTS_CA_BUNDLE / --cert only add CAs; truststore is
> > used “in addition to certifi” by design. As a result, any pip < 26.2.2
> > will keep trusting the compromised intermediate CAs regardless of the
> > system trust store, so distrusting them at the OS level is not enough.

The discuss.python.org conversation on that issue has long since moved
on, so asking here:

The macOS remediation advice on the official vuln page at
https://emudhra.we-have-a-problem.com/#macos-curl lists remediation
instructions which it is claimed address this, with instructions to
set a PIP_CERT environment variable in a sitecustomize.py file.

> The built-in pip3, and the pip in virtual environments created from the built-in python3, use their own outdated copy of the roots instead. To make them use the fixed system file, run:
>
> F="$(/usr/bin/python3 -c 'import sysconfig; print(sysconfig.get_path("stdlib"))')/sitecustomize.py" &&
echo 'import os; os.environ.setdefault("PIP_CERT",
"/etc/ssl/cert.pem")' | sudo tee -a "$F" > /dev/null &&
sudo chmod 644 "$F"

I'm finding it a bit tricky to figure out a reproducible test case
which would exercise this, so I haven't done more testing myself,
but—does this actually work?  Or is upgrading `pip` to >= 26.2.2 the
only solution?  (Or, now that `pip` > 26.2.2 is out, is upgrading the
better solution, and I should go file a PR against the site to update
its guidance.)

(Incidentally, the latest macOS updates do _NOT_ include an updated
`/etc/ssl/cert.pem`, and do clobber any manual changes you or your IT
department may have made to `/etc/ssl/cert.pem`, so any manual
mitigations you have applied to remove the AAA Certificate Services
and emSign ECC Root CA - G3 certs _DO_ need to be reapplied.)

Best,
- Kevin

On Thu, Oct 22, 2026 at 4:43 PM Alan Coopersmith
<alan.coopersmith@...cle.com> wrote:
>
> https://discuss.python.org/t/information-for-python-users-regarding-emudhra-emsign-ca-certificate-security-incident/109576
> has this statement from Seth Michael Larson:
> > A security incident affecting eMudhra intermediate certificates has
> > required removing the emSign root CA certificate from CA bundles such
> > as “certifi”. It’s important to immediately upgrade the software
> > packages below to at least the versions specified and rebuild
> > container images with layer caching disabled to fetch the latest
> > system certificates. Failure to do so could result in
> > monster-in-the-middle (MITM) attacks against TLS clients, including
> > python.org and pypi.org .
> >
> >     certifi 2026.10.19 (1)
> >     pip 26.2.2
> >     uv 0.13.4
> >     sigstore 4.5.1
> >     conda 26.9.4
> >     pixi 0.82.1
> >
> > (1): Advisory mentions 2026.10.18, but 2026.10.19 is recommended for
> > compatibility with unaffected emSign root certificates.
> >
> > For all existing virtual environments on your system, please upgrade
> > pip and uv to the latest versions. You can update pip securely by
> > running the following command and then use this secure pip
> > installation to upgrade certifi and uv:
> >
> > python -m pip install "pip @ https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl#sha256=fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70"
> >
> > Note that the certifi CA bundle is included in the macOS installation
> > of Python from python.org. To upgrade certificates for this
> > installation and pip itself, run the command below like so:
> >
> > /Library/Frameworks/Python.framework/Versions/3.15/bin/python3.15 -m pip install "pip @ https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl#sha256=fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70"
> > /Library/Frameworks/Python.framework/Versions/3.15/bin/python3.15 -m pip install --upgrade certifi
> > /Library/Frameworks/PythonT.framework/Versions/3.15/bin/python3.15t -m pip install "pip @ https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl#sha256=fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70"
> >
> > This topic will be updated as more information is made available.
>
> A comment on it from Christian Helms adds:
> > Just to stress one point: users must update pip to >= 26.2.2.
> >
> > pip always loads the CA certificates from its vendored certifi in
> > addition to the system trust store, and there is no supported way to
> > disable this. REQUESTS_CA_BUNDLE / --cert only add CAs; truststore is
> > used “in addition to certifi” by design. As a result, any pip < 26.2.2
> > will keep trusting the compromised intermediate CAs regardless of the
> > system trust store, so distrusting them at the OS level is not enough.
> >
> > uv users can block the bad certs in their system trust store and
> > UV_SYSTEM_CERTS=true. That does not work with pip. Updating pip is the
> > only reliable fix. See Switch to using truststore only by default
> > (currently mixed certifi + truststore) · Issue #14374 · pypa/pip ·
> > GitHub
> >
> > PS: The ‘security incident’ is a bad private key. An elliptic key with
> > private key value d=4 is not secure… All 8 eMudhra CAs had private
> > keys with d < 256.
>
>


-- 
Kevin Riggle - Principal, Complex Systems Group LLC
he/him • Brooklyn, NY, USA • Eastern Time
https://complexsystems.group • https://calendly.com/kevinriggle/coffee
