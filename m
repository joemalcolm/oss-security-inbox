X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/22/1
Message-ID: <8fc3c73f-ae17-a490-b682-31d25da25011@lighttpd.net>
Date: Sat, 22 Jul 2017 14:20:20 +0200
From: Stefan Bühler <stbuehler@...httpd.net>
To: oss-security@...ts.openwall.com
Cc: Pierre-Yves Chibon <pingou@...goured.fr>
Subject: pagure: private repositories accessible through ssh
Content-Type: text/plain; charset=utf-8

Hi,

pagure [1], a git-centered forge, supports private repositories [2]:

> PRIVATE_PROJECTS
> ~~~~~~~~~~~~~~~~
>
> This configuration key allows you to host private repositories. These
> repositories are visible only to the creator of the repository and to
> the users who are given access to the repository.  No information is
> leaked about the private repository which means redis doesn't have the
> access to the repository and even fedmsg doesn't get any
> notifications.
>
> Defaults to: ``False``

But the gitolite config, which is used to configure SSH-access, allows
"@all" users to access all repositories - private or not.

I proposed the attached patch upstream in [3].

After patching you should ensure gitolite.conf gets regenerated from
scratch.

cheers,
Stefan

[1]: https://pagure.io/pagure
[2]: https://pagure.io/pagure/blob/master/f/doc/configuration.rst
[3]: https://pagure.io/pagure/pull-request/2426

View attachment "2426-hide-private-repos-in-ssh.patch" of type "text/x-patch" (879 bytes)
