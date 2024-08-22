Received: (qmail 32075 invoked by uid 550); 22 Aug 2024 21:36:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23841 invoked from network); 22 Aug 2024 21:13:11 -0000
Authentication-Results: ext-mx-out013.mykolab.com (amavis);
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=kolabnow.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	in-reply-to:content-transfer-encoding:content-disposition
	:content-type:content-type:mime-version:references:message-id
	:subject:subject:from:from:date:date:received:received:received;
	 s=dkim20240523; t=1724361179; x=1726175580; bh=5E53Zrl5d/Jf32n+
	8GPRgQt1D1XT17DiG4LFFTnw/DU=; b=bF4cd+1SS1TW/gCpb10m6PaWvkLW6mnv
	VzuTZv3lEJBS1xmkcSNr1VGVZgXuaD4A1SuF9MopZMIL8zRLkpDJmU5cm8/nfn7t
	3vYAcHuQfSJmu6rfqAaO6AIL+7CTZWOQVvzkPiMEqa2/5yw+cY8nDA+PCf06s4Gz
	9844zrp/KcfEd5KiRFtWseTbNmiIE5pDRyJuw6fXdydK7qCIOEE3D2WAGIyGBTJW
	BUkR0/K5mKXuUaoIvXXeBDxC+Z4BhFHzSKv2uGVa+XmcnUaHEV//JQW2A8mqj3FJ
	IENLHmYIUh492zGS2OKQDxWcApDzwTSEMzqBMurOdbjpYQYItTt6Ag==
X-Virus-Scanned: amavis at mykolab.com
Date: Thu, 22 Aug 2024 23:12:57 +0200
From: Fay Stegerman <flx@obfusk.net>
To: oss-security@lists.openwall.com
Message-ID: <Zsep2UnG7WHvlEnh@nihonium>
References: <CAADqWPQNv110yAGhdYGYi7FyzpO2MB9v=sQWsV_cd+=XmB-FUA@mail.gmail.com>
 <aafef56c-c8eb-4c11-9c87-cdee03f97616@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aafef56c-c8eb-4c11-9c87-cdee03f97616@oracle.com>
Subject: Re: [oss-security] CPython: CVE-2024-8088: Infinite loop when
 iterating over zip archive entry names

* Alan Coopersmith <alan.coopersmith@oracle.com> [2024-08-22 20:56]:
> -------- Forwarded Message --------
> Subject: 	[Security-announce][CVE-2024-8088] Infinite loop when iterating
> over zip archive entry names
> Date: 	Thu, 22 Aug 2024 13:40:20 -0500
> From: 	Seth Larson <seth@python.org>
> Reply-To: 	security-sig@python.org
> To: 	security-announce@python.org
> 
> There is a HIGH severity vulnerability affecting the CPython "zipfile" module.
> 
> When iterating over names of entries in a zip archive (for example, methods
> of "zipfile.ZipFile" like "namelist()", "iterdir()", "extractall()", etc)
> the process can be put into an infinite loop with a maliciously crafted
> zip archive. This defect applies when reading only metadata or extracting
> the contents of the zip archive. Programs that are not handling
> user-controlled zip archives are not affected.
> 
> Please see the linked CVE ID for the latest information on affected versions:
> 
> * https://www.cve.org/CVERecord?id=CVE-2024-8088
> * https://github.com/python/cpython/pull/122906
> * https://github.com/python/cpython/issues/122905

A small correction/addendum based on reading the vulnerability report and the PR
that fixes this (as well as being quite familiar with Python zipfile.ZipFile
internals and confused how this would affect it): it's not zipfile.ZipFile and
its methods that are affected, at least not directly, but zipfile.Path.  The
issue being this code in zipfile._path._ancestry():

  path = path.rstrip(posixpath.sep)
  while path and path != posixpath.sep:
      yield path
      path, tail = posixpath.split(path)

Which results in an infinite loop because for example posixpath.split("//") ==
("//", "") but "//" != posixpath.sep:

  >>> it = zipfile._path._parents("//foo")
  >>> next(it)
  '//'
  >>> next(it)
  '//'
  >>> next(it)
  '//'

The infinite loop has been fixed by sanitising the paths.

- Fay
