X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2596" "Sunday" "13" "September" "2015" "16:47:39" "+0000" "Luke Faraone" "lfaraone@debian.org" "<1442162859.9920.11.camel@debian.org>" "70" "[oss-security] CVE-2015-0853: insecure use of os.system() in svn-workbench" nil nil nil "9" "2015091316:47:39" "[oss-security] CVE-2015-0853: insecure use of os.system() in svn-workbench" (number mark "        lfaraone@deb Sep 13   70/2596  " thread-indent "\"[oss-security] CVE-2015-0853: insecure use of os.system() in svn-workbench\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22025 invoked by uid 550); 13 Sep 2015 16:48:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21615 invoked from network); 13 Sep 2015 16:47:52 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:date:content-type
         :mime-version;
        bh=N+gcyaO+ERZxfLTdw9WaVoon81GXAUJZDzGTPxHEsbI=;
        b=PSjP+HIvBJoUSusDcRDnycAskymwCaZgY3tlB9hMse6uNoLFrOIByF7hu+9juTBZK3
         qwcRpllpMQdAvjBxkG70qRfvuLgxCQAfzGODXJh0JYg3z1/QSgCyr6auRjruF+l2aUwJ
         MgZySkHs3+B7QVShGIvKIcQ/i2N1t9UYKVP/G7S5svcJ9PZosjmGjVoMEdNvgFobCBp6
         MLmV3IqY2Nnl4d11+hp3QG53MbP6zFokKtFHjur2wyGwfzLufTaAk7MOEPc/kldTz4W2
         pdTPwtVi4f92fsGaZXirPDthJXpKJT/vXoLuo73DOOkxYr8cqSrsM6MhDk+kVyBWHdlw
         OXdA==
X-Gm-Message-State: ALoCoQkRVk3+K7RPypZ1eUyZUevyKPqUMv4Hpy6GRmUlgb+LKNpxqDy6l/XfWNc65zgKnU91XbIJpbFqIZUbK8123wK6WvVNU84vZqvIjJYUsqp8b2tyjMw=
X-Received: by 10.50.17.67 with SMTP id m3mr12383121igd.5.1442162860636;
        Sun, 13 Sep 2015 09:47:40 -0700 (PDT)
X-Relaying-Domain: luke.wf
Message-ID: <1442162859.9920.11.camel@debian.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-oE3aCMs9LaddeL1896DV"
X-Mailer: Evolution 3.12.11-0ubuntu3 
Mime-Version: 1.0
Date: Sun, 13 Sep 2015 16:47:39 +0000
From: Luke Faraone <lfaraone@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-0853: insecure use of os.system() in svn-workbench
To: oss-security@lists.openwall.com

--=-oE3aCMs9LaddeL1896DV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I discovered that, in the SVN GUI application "svn-workbench", if a user
was tricked into using the "Command Shell" menu item while in a
directory with a specially-crafted name, svn-workbench would execute
arbitrary commands with the permissions of the user.

STEPS TO REPRODUCE:
     1. Add "https://github.com/lfaraone/turbulent-octo-garbanzo" as a
        project in svn-workbench
     2. Checkout the project
     3. Navigate to "trunk/$(xeyes)"
     4. Click "Actions", then "Command Shell"

The `xeyes` program (if installed on your system) should start.

Source/wb_shell_unix_commands.py starting at line 53:
        def ShellOpen( app, project_info, filename ):
            app.log.info( T_('Open %s') % filename )
            cur_dir =3D os.getcwd()
            try:

        wb_platform_specific.uChdir( project_info.getWorkingDir() )
                os.system( "xdg-open '%s'" % filename )
            finally:
                wb_platform_specific.uChdir( cur_dir )

The code should instead start a subprocess in a secure way, such as
using subprocess.call().

CVE-2015-0853 has been assigned for this issue.=20

This issue affects at least version 1.6.2 (older versions may be
affected) through the current latest version of svn-workbench at time of
writing.

Upstream bug: http://pysvn.tigris.org/issues/show_bug.cgi?id=3D202
Debian bug: http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D798863
Ubuntu bug: https://launchpad.net/bugs/1495268

Regards,
Luke Faraone

--=-oE3aCMs9LaddeL1896DV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJV9airAAoJEFrOjW4MFKRwmREP/366errHxXTB868saBudOpTX
Sc6DRIVP6b907o5hJGV1Qam9BScBQXojFqgQEJlN2ZUkWBxGrmsIzR7wGS5o5ltc
LH+6kk9b2FvorBqGVdC30zIQ6gVPOtLiBaLxbfl2CXwDtTrG2gSb5tc0rzp8ARRh
j3s+vYRudW4rdWGPFISzm+1wVzxRtSq4dATfdYmin8be1doMLMjw0yNGpzbafcXg
YKDco4K5of8qvDP3eXzZ2wOnsacmWl8nvgpqkOtwsgjEo2AsS7UnD+GxVT4oudm0
ArZbhaLLKnmZDVmDLaF0ZIVmfDj026XwsZKOaDzaOZ0cGqEcvCr3pwofk80tq72C
ByTyVeJiNEF1INZg3lJZyRMcqSeOXmpk96C4JyifK1RAoeV67ziQfdfbJAhsrwHz
FyP6c72UbV8+q2b9pD9URnvLZzyLn4KQJ03Oz6D2mAt9xA1oky0mpUaqXEXmky4v
Le6nPgbFyIPbGg7z0mdgrd/ztLlZoKmg/sw/NA5uAawAv1XH2fysIYoWNRdnwe7u
Avm2ckLpVzLa+C/whW9v7pJ4ez6mjFdps15d7ULDNFEGIkcYsMT3YGo6ibrSeJzn
3dG6y4CtZ5lNDNW8h8HWUvR5K6cIwck9RZnvKkeEz6dS8W1CqA+/sEQC1eGGprix
+PF0pNYVUhDvBHF+BGVE
=z9tV
-----END PGP SIGNATURE-----

--=-oE3aCMs9LaddeL1896DV--
