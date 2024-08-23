Received: (qmail 10016 invoked by uid 550); 23 Aug 2024 20:38:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32116 invoked from network); 23 Aug 2024 19:08:52 -0000
Authentication-Results: ext-mx-out013.mykolab.com (amavis);
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=kolabnow.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	in-reply-to:content-transfer-encoding:content-disposition
	:content-type:content-type:mime-version:references:message-id
	:subject:subject:from:from:date:date:received:received:received;
	 s=dkim20240523; t=1724440121; x=1726254522; bh=bThFP+R5BVWfP/3j
	kGWvjnCBda6EiDWz3BKi8kkbc94=; b=f7FtsJMq0FgFCX9X/BPF8l0AJXwPzZpL
	sKO4HeqyCc1WiVQwnjhyXVtcdPCUKH42fyRL+YhpXjvAFdyyo4VVAMMR7cvgaisl
	wN/iY4gfxtnuUiKdrEU8qedB6HIgtt1jYvJeDZTnxlOV1Ba2hWENQOFvgeYheaqm
	pfgd+azMC+xmEMRyK6fT7UbhO2GzDCzCkFL3ZvTbUBdAqmqWl2jqJ+tcRHIg8Oya
	MndS+YnnBgnoOFaKVu9a/BwWajQXh8mCS4FOTQfpJOSOGJxh+3jwpFmLWZ1kno2P
	M8k+4EqHWXjZccQowdm3K7cnaepY/87M/LPpMvsSAB0vUW8z3MI/9A==
X-Virus-Scanned: amavis at mykolab.com
Date: Fri, 23 Aug 2024 21:08:39 +0200
From: Fay Stegerman <flx@obfusk.net>
To: oss-security@lists.openwall.com
Message-ID: <ZsjeNwQ-v2yuOR4D@nihonium>
References: <CAADqWPQNv110yAGhdYGYi7FyzpO2MB9v=sQWsV_cd+=XmB-FUA@mail.gmail.com>
 <aafef56c-c8eb-4c11-9c87-cdee03f97616@oracle.com>
 <Zsep2UnG7WHvlEnh@nihonium>
 <Zsis6Gx2qq_laiC7@nihonium>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zsis6Gx2qq_laiC7@nihonium>
Subject: Re: [oss-security] CPython: CVE-2024-8088: Infinite loop when
 iterating over zip archive entry names

* Fay Stegerman <flx@obfusk.net> [2024-08-23 17:38]:
> * Fay Stegerman <flx@obfusk.net> [2024-08-22 23:12]:
> > * Alan Coopersmith <alan.coopersmith@oracle.com> [2024-08-22 20:56]:
> > > -------- Forwarded Message --------
> > > Subject: 	[Security-announce][CVE-2024-8088] Infinite loop when iterating
> > > over zip archive entry names
> > > Date: 	Thu, 22 Aug 2024 13:40:20 -0500
> > > From: 	Seth Larson <seth@python.org>
> > > Reply-To: 	security-sig@python.org
> > > To: 	security-announce@python.org
> > >
> > > There is a HIGH severity vulnerability affecting the CPython "zipfile" module.
> > >
> > > When iterating over names of entries in a zip archive (for example, methods
> > > of "zipfile.ZipFile" like "namelist()", "iterdir()", "extractall()", etc)
> > > the process can be put into an infinite loop with a maliciously crafted
> > > zip archive. This defect applies when reading only metadata or extracting
> > > the contents of the zip archive. Programs that are not handling
> > > user-controlled zip archives are not affected.
> > >
> > > Please see the linked CVE ID for the latest information on affected versions:
> > >
> > > * https://www.cve.org/CVERecord?id=CVE-2024-8088
> > > * https://github.com/python/cpython/pull/122906
> > > * https://github.com/python/cpython/issues/122905
> >
> > A small correction/addendum based on reading the vulnerability report and the PR
> > that fixes this (as well as being quite familiar with Python zipfile.ZipFile
> > internals and confused how this would affect it): it's not zipfile.ZipFile and
> > its methods that are affected, at least not directly, but zipfile.Path.  The
> > issue being this code in zipfile._path._ancestry():
> >
> >   path = path.rstrip(posixpath.sep)
> >   while path and path != posixpath.sep:
> >       yield path
> >       path, tail = posixpath.split(path)
> >
> > Which results in an infinite loop because for example posixpath.split("//") ==
> > ("//", "") but "//" != posixpath.sep:
> >
> >   >>> it = zipfile._path._parents("//foo")
> >   >>> next(it)
> >   '//'
> >   >>> next(it)
> >   '//'
> >   >>> next(it)
> >   '//'
> >
> > The infinite loop has been fixed by sanitising the paths.
> 
> Forgot to mention this: the infinite loop is triggered when zipfile.Path adds
> "implied directories" -- using _parents(), which calls _ancestry() -- in the
> overridden .namelist() for the custom zipfile.ZipFile subclass it wraps.  Which
> is (indirectly) used by almost all of the zipfile.Path methods like .iterdir(),
> .glob(), .exists(), .joinpath() etc.
> 
>   >>> zf = zipfile.ZipFile(io.BytesIO(), "w")
>   >>> zf.filename = "foo.zip"
>   >>> zf.writestr("a/b/c", "abc")
>   >>> zf.writestr("d/e", "de")
>   >>> zf.namelist()
>   ['a/b/c', 'd/e']
>   >>> zf.__class__
>   <class 'zipfile.ZipFile'>
> 
>   >>> p = zipfile.Path(zf)
>   >>> p.root.namelist()
>   ['a/b/c', 'd/e', 'a/b/', 'a/', 'd/']
>   >>> list(p.iterdir())
>   [Path('foo.zip', 'a/'), Path('foo.zip', 'd/')]
>   >>> zf.__class__
>   <class 'zipfile._path.CompleteDirs'>
> 
>   >>> zf.writestr("//oops", "oops")
>   >>> # infinite loop via joinpath -> resolve_dir -> _name_set -> namelist ->
>   >>> # _implied_dirs -> _ancestry
>   >>> p / "foo"
> 
> As zipfile.Path modifies the class of the original ZipFile, calling .namelist()
> or .extractall() on the original ZipFile used to create the Path afterwards is
> also affected even though zipfile.ZipFile as such is not.

I just reported [1] that the patch introduced a regression:

  >>> import io, zipfile
  >>> zf = zipfile.ZipFile(io.BytesIO(), "w")
  >>> zf.writestr("d:/foo", "bar")
  >>> zf.extractall("a")
  >>> open("a/d:/foo").read()
  'bar'
  >>> p = zipfile.Path(zf)
  >>> x = p / "d" / "foo"
  >>> y = p / "d:" / "foo"
  >>> list(p.iterdir())   # before: [Path(None, 'd:/')]
  [Path(None, 'd/')]
  >>> p.root.namelist()   # before: ['d:/foo', 'd:/']
  ['d/foo', 'd/']
  >>> x.exists()          # before: False
  True
  >>> y.exists()          # before: True
  False
  >>> zf.extractall("b")  # before: worked like above
  KeyError: "There is no item named 'd/foo' in the archive"
  >>> x.read_text()       # before: FileNotFoundError
  KeyError: "There is no item named 'd/foo' in the archive"
  >>> y.read_text()       # before: worked
  FileNotFoundError: ...

- Fay

[1] https://github.com/python/cpython/issues/123270
