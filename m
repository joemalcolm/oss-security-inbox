X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/21
Message-ID: <bb20ca51-4cc5-4cd9-8366-87ee09593a32@oracle.com>
Date: Fri, 9 Oct 2026 15:05:43 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: mutt 2.4.3 released, fixes CVE-2026-107570
Content-Type: text/plain; charset=utf-8

https://marc.info/?l=mutt-users&m=179154210212456&w=2 announces:
> List:       mutt-users
> Subject:    mutt 2.4.3 released
> From:       "Kevin J. McCarthy" <kevin () 8t8 ! us>
> Date:       2026-10-09 10:27:27
> Message-ID: 20261009102727.mvf3qZLZ () 8t8 ! us
> 
> 
> Hello Mutt Users,
> 
> I've just released version 2.4.3.  Instructions for downloading are 
> available at <http://www.mutt.org/download.html>, or the tarball can be 
> directly downloaded from <http://ftp.mutt.org/pub/mutt/>.  Please take 
> the time to verify the signature file against my public key[1].
> 
> This release fixes two bugs.  One of them is for CVE-2026-107570, fixing 
> an OOB heap write.  This is triggered by a specially crafted 
> Content-Header line in an email that is used as a template for a new 
> email, via <resend-message>.  Thanks to Calif.io, in collaboration with 
> Anthropic for sending me a detailed write up and suggested patch.
> 
> The full set of changes are:
> 
> 7752d93f  Fix OOB heap write in convert_file_from_to().
> 4364e5b0  Fix mutt_signed_handler() goodsig setting.
> 
> Thanks to everyone who for reporting issues, generated patches, reviewed 
> code, helped test, and provided feedback on the mailing list.
> 
> -Kevin
> 
> [1]
> My public key is available at:
>     - my personal website: https://8t8.us/configs/80316BDA.asc.pubkey
>     - the mutt website: http://www.mutt.org/keys/kevin.key
>     - The keys.openpgp.org network
>       https://keys.openpgp.org/vks/v1/by-fingerprint/8975A9B33AA37910385C5308ADEF768480316BDA


