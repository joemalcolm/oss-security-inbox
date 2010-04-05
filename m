X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/04/05/2
Message-ID: <4BB9A5A3.6090103@kernel.sg>
Date: Mon, 05 Apr 2010 16:56:03 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: cifs: cifs_create() NULL pointer dereference
Content-Type: text/plain; charset=utf-8

On 04/05/2010 04:51 PM, Eugene Teo wrote:
> Reported by Eugene Teo. While creating a file on a server which supports
> Unix extensions such as Samba, if a file being created does not supply
> nameidata (i.e. nd is NULL), cifs client can trigger a NULL pointer
> dereference when calling cifs_posix_open().
>
> http://comments.gmane.org/gmane.linux.file-systems.cifs/5782
> https://bugzilla.redhat.com/579445

The code that introduced this is upstream commit c3b2a0c6. Any kernel 
version from v2.6.29-rc6 onwards are affected.

Thanks, Eugene
