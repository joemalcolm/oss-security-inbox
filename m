X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["887" "Sunday" "17" "December" "2017" "14:36:42" "+0100" "Raphael Geissert" "atomo64@gmail.com" "<CAA7hUgGYLFEX==FHob2823M0UEoWXG=h+LtJfGLLSdajOYoHrQ@mail.gmail.com>" "28" "[oss-security] Portus, missing LDAP server authentication" nil nil nil "12" "2017121713:36:42" "[oss-security] Portus, missing LDAP server authentication" (number mark "U       atomo64@gmai Dec 17   28/887   " thread-indent "\"[oss-security] Portus, missing LDAP server authentication\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20340 invoked by uid 550); 17 Dec 2017 13:37:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20306 invoked from network); 17 Dec 2017 13:37:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=dMfNXjk/pdNhdkQ3cr6q02oqZdEwGyOR68e+1igtm14=;
        b=j6CQpATI4aUaZEu+r7N1jLII5egLnJvAp+pFwLv7k9g2wlfiGquTIDudNJ9gm0UtJJ
         OsJgeACng9mwBLACGDwWHpb1OK0+m6Q8QPxY+QYX2Jlzp6G42rewFas5N/wM9cLRhLHF
         IzelaLcgiE8kubJIYhOAMaZDi/Dkza+Hc/iXUKTZprnk8aBf7qldcSfAAAM4GWuhR9nt
         AljyURnnFsQbpmGMlTPKXbTPXvvB/HJa8i5HRT0BEj2to7qanGidZclGdirnHKYze6a/
         yvuEYA8zwsVVii7iT2kmljVMeFlRz600Iddff4tn/AmWKf0l8wlJjZjX7GFmUnv7I3My
         dgQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=dMfNXjk/pdNhdkQ3cr6q02oqZdEwGyOR68e+1igtm14=;
        b=eieomBZBReFUnDicpvsGna9vj1EtNJVS4d0dDzWJgJ/GauA3t/MbmfzUmTdPeaBMG0
         mv6l7YH3gRFicc1jZCEirdo2cfU1YwJBX4SOVH42aUWksU7Npja9oH9U2gKUhAj+AeVy
         3KGGc9K7CHrioXoGoY7pE/VWRYevwL/ofpgnrMNoaJ0d+BaG1/HgLYRqidai7RJ6axP+
         dDituCp8nYuJiEd6N2w/KEkVGOnw7iq0FsW+31aFPxnjmifcgSOPo+fJXR6ZFnzNnpbn
         yMhiolHGDT62iRfzsIiTslq3Pw4jaBsI138ONurncFTAGDuKH2oAc4FkkFy45stzbUpL
         J0QA==
X-Gm-Message-State: AKGB3mIHFSlVkH5faIpOgZ5q0o2mpy1DLqRORfxzm1KnTsa3b/nHewKv
	YzqR23T8XoYAjcbYR7z1h38d4zCr/nDuuYYlNnmSTsHG
X-Google-Smtp-Source: ACJfBouUEpJqS9zMQXsmZuhk1fkPqCalbrgeN88YD7Mdp+/MntLwzfqxxUiK9YyJKKoSKDINOC0UImUqfK+zlBCovA4=
X-Received: by 10.36.93.5 with SMTP id w5mr16128297ita.124.1513517823466; Sun,
 17 Dec 2017 05:37:03 -0800 (PST)
MIME-Version: 1.0
From: Raphael Geissert <atomo64@gmail.com>
Date: Sun, 17 Dec 2017 14:36:42 +0100
Message-ID: <CAA7hUgGYLFEX==FHob2823M0UEoWXG=h+LtJfGLLSdajOYoHrQ@mail.gmail.com>
To: Open Source Security <oss-security@lists.openwall.com>
Cc: security@suse.de
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Portus, missing LDAP server authentication

Hi,

Portus 2.2 and older provides LDAP integration for authenticating the
users. However, in spite of it providing advice on configuring it to
"to setup LDAP over SSL/TLS"[1], the implementation does not verify
the server's identity at all.

I'm writing about it here mainly because there appears to be some
intention of TLS support. Users might expect it to actually provide
some kind of security.

Interestingly enough, the documentation and the config file comments
say  'the recommended [method] is "starttls".'[2] I don't know where
they got that from.

CC'ing SUSE's security team.

I have not yet reported it to the portus team directly, nor requested
a CVE id (though I'm tempted to request one, to err on the side of
safety).


[1]http://port.us.org/docs/Configuring-Portus.html
[2]https://github.com/SUSE/Portus/blob/master/config/config.yml#L49

Cheers,
-- 
Raphael Geissert
