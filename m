Received: (qmail 9957 invoked by uid 550); 15 Jan 2026 21:36:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15690 invoked from network); 15 Jan 2026 21:27:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1768512426; x=1769179092; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=QbDwVcyIzEEazPCJ8qkiwzbakjiKv9TdSrSLE2krzBM=;
 b=jcxystP2wkW2k8domj/KURVLsO/rdqvrqhyZkNJZSxPQUgz7S/BBVOd9i9I444cO5LlhySRR
  /N7b2vWTO8ZRKqum6iBD6qO5JztVKZzifT2+f/6Kon0n5CoCB34cVTsaF013qun9XaxuRPgwNC
  0J+8KTE6Q/s3eEyTpwyliNFXeZP/yEHmGjMLIFdy9/jGnAeLeZWmyJ8tngrjKrNMIXW2Z0RTKo
  5QDHQ9ZvL30MsW8D3RRQA4iGn237pQrDEEiDwENQA3ATJtI/zUvAFUUY5x0k2Qn7ml4UbZMfye
  D9gB4eHX6RY7Un+5HJTD0qfgSBDUBWnQS9QOA5DF9ulQrmBQ==
Date: Thu, 15 Jan 2026 22:27:05 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20260115212705.TKR365wo@steffen%sdaoden.eu>
In-Reply-To: <01e3014e-85d8-484c-b755-bd8eb6ddd10d@oracle.com>
References: <01e3014e-85d8-484c-b755-bd8eb6ddd10d@oracle.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-743-g1489053f65-dirty
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Go 1.25.6 and Go 1.24.12 are released
 with 6 CVE fixes

Alan Coopersmith wrote in
 <01e3014e-85d8-484c-b755-bd8eb6ddd10d@oracle.com>:
 |https://groups.google.com/g/golang-announce/c/Vd2tYVM8eUc announces:
 |> Hello gophers,
 |> 
 |> We have just released Go versions 1.25.6 and 1.24.12, minor point \
 |> releases.
 |> 
 |> These releases include 6 security fixes following the security policy:
 |> 
 |>   - archive/zip: denial of service when parsing arbitrary ZIP archives
 |> 
 |>     archive/zip used a super-linear file name indexing algorithm \
 |>     that is invoked
 |>     the first time a file in an archive is opened. This can lead \
 |>     to a denial of
 |>     service when consuming a maliciously constructed ZIP archive.
 |> 
 |>     Thanks to Thanks to Jakub Ciolek for reporting this issue.
 |> 
 |>     This is CVE-2025-61728 and Go issue https://go.dev/issue/77102.

Go is thrilling you know, those personalities involved in the past
and present (also including Plan9 history, and all that) ...

It is a little bit off-topic, but it reminds me of kinds of
"detoriation", as well as "spreaded complication" i have
introduced myself when fixing bugs of all sort.  So looking at the
link bug report, i see

  for dir := path.Dir(name); dir != "."; dir = path.Dir(dir) {

being replaced with an unrolled

  if idx := strings.LastIndex(dir, "/"); idx < 0 {
    ...

But Go supports "modification in place", and doesn't the above
imply that the Go standard library interface is missing important
functionality to avoid such security glitches in any code that
makes use of path.?  Ie, path.Dir() is

  Dir returns all but the last element of path, typically the
  path's directory. After dropping the final element using Split,
  the path is Cleaned and trailing slashes are removed. If the
  path is empty, Dir returns ".". If the path consists entirely of
  slashes followed by non-slash bytes, Dir returns a single
  slash. In any other case, the returned path does not end in
  a slash.

and path.Split() is

  Split splits path immediately following the final slash,
  separating it into a directory and file name component. If there
  is no slash in path, Split returns an empty dir and file set to
  path. The returned values have the property that path
  = dir+file.

And i note that the committed bugfix not only avoids all the
canonicalization cleanup of Dir(), but also the creation of new
(temporary) result strings.  In order to do that creates (yet
another?) place that fiddles with indices.

Just a (well-known, granted) thought in all the overdriven
"memory-safe" noise.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
