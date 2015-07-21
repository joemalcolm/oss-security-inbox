X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2443" "Tuesday" "21" "July" "2015" "13:19:51" "-0500" "Kyle Kelley" "rgbkrk@gmail.com" "<CA+tbMaUZzefcMReWsFakBurpeUJWtuhZr+d90JbiFUZLY6CrVA@mail.gmail.com>" "73" "[oss-security] Re: CVE request: IPython CSRF validation" nil nil nil "7" "2015072118:19:51" "[oss-security] Re: CVE request: IPython CSRF validation" (number mark "        rgbkrk@gmail Jul 21   73/2443  " thread-indent "\"[oss-security] Re: CVE request: IPython CSRF validation\"\n") "<20150721115058.8205A52E158@smtpvbsrv1.mitre.org>" ("<CA+tbMaW_byk+-swLHZ9nE7jDh1GCGc9Dd9A8who56h0rmAzjwQ@mail.gmail.com>" "<20150721115058.8205A52E158@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 2008 invoked by uid 550); 21 Jul 2015 18:20:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1983 invoked from network); 21 Jul 2015 18:20:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=gJjpyWarWIVTXjGHAZzYj7O9qNio3Ms5NDNZf3KQM9g=;
        b=o58a28xbqyHgYy/oX1ZwWyrxjVWrBcmJH+rzraUVs6iHShWXczggKkmb9L/l6LZGkk
         hHUwtwXyBHa5zLxPuEXOE013vBTGJjzI06gYwAUhaKxSvdpC7M6i9OnWdlzsMjAexU3q
         fSb9G+SoTYz1G5/lXdG1Qc4CwRsE/wPzshLUXb8VXNpxUFF39iwXmAxaaCPzpo+uV/Po
         9GDEhx1Guq3ILxVgMDmJLIPnA2qXPYc8CWz+z+4OjCu7laoFNOJTvQ2TjG530eaOS5LS
         f4zC0DfTx1UknzXyOs4DCxpNOMtYlyuWxlzohtkxbSWpu5hJHI3obX56T7tdtZw9vvFU
         bSqQ==
MIME-Version: 1.0
X-Received: by 10.55.25.35 with SMTP id k35mr56303270qkh.76.1437502792004;
 Tue, 21 Jul 2015 11:19:52 -0700 (PDT)
In-Reply-To: <20150721115058.8205A52E158@smtpvbsrv1.mitre.org>
References: <CA+tbMaW_byk+-swLHZ9nE7jDh1GCGc9Dd9A8who56h0rmAzjwQ@mail.gmail.com>
	<20150721115058.8205A52E158@smtpvbsrv1.mitre.org>
Message-ID: <CA+tbMaUZzefcMReWsFakBurpeUJWtuhZr+d90JbiFUZLY6CrVA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1147e69a47fbb8051b66b36d
Cc: oss-security@lists.openwall.com, Muhammad A Khan <khanam@us.ibm.com>, 
	security <security@ipython.org>
Date: Tue, 21 Jul 2015 13:19:51 -0500
From: Kyle Kelley <rgbkrk@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: IPython CSRF validation
To: cve-assign@mitre.org

--001a1147e69a47fbb8051b66b36d
Content-Type: text/plain; charset=UTF-8

We realized that introducing CSRF everywhere in old releases was not going
to be backwards compatible, so we made more stringent decisions about
explicit Host and Origin checking. By design we don't protect against
untrusted clients, just cross-origin from regular browsers.

-- Kyle Kelley

On Tue, Jul 21, 2015 at 6:50 AM, <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> > Software name: IPython notebook
> > Attack outcome: Possible remote execution
> > Patches:
> >   2.x:
> >
> https://github.com/ipython/ipython/commit/a05fe052a18810e92d9be8c1185952c13fe4e5b0
> >   3.x:
> >
> https://github.com/ipython/ipython/commit/1415a9710407e7c14900531813c15ba6165f0816
> >
> > POST requests exposed via the IPython REST API are vulnerable to
> > cross-site request forgery (CSRF). Web pages on different domains can
> make
> > non-AJAX POST requests to known IPython URLs, and IPython will honor
> them.
> > The user's browser will automatically send IPython cookies along with the
> > requests.
>
> Use CVE-2015-5607.
>
> This part of the patch seems unusual, but we haven't researched it at all:
>
>   host = self.request.headers.get("Host")
>   origin = self.request.headers.get("Origin")
>
>   # If no header is provided, assume it comes from a script/curl.
>   # We are only concerned with cross-site browser stuff here.
>   if origin is None or host is None:
>      return True
>
> Is this a case where it is safe to skip CSRF protection in all
> situations where the client omits an Origin header?
>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.14 (SunOS)
>
> iQEcBAEBAgAGBQJVrjG9AAoJEKllVAevmvms5UwH/2hScDKEqZ7YRg+Rrh5GNsZj
> /EqVTy7VhFSr67xFxE1p/wn8X6UsRs4c4C1BtqGdbFFgh/UHE2X3uFrqeSEX+mWg
> i5fDE+OGKSZdqK+UM0pazNsEtWCyrvx/5j+zJ7PSL2Jejrc4v81F/UGP83qtY5CC
> 1cbslombkmi1juKiupm57sQwqCAhVPASrTaQn9LFZyDlcuvpa/93OlGgdKtlyqX4
> u77/cDUVQ+RVb0Ivj9EJAJbfjhfdZ8h/BDn8GiAbQ51ADpogTDCpPpIqRN+9/0d1
> LAaDDbROGwBc0IdDzlDB8D2sW2z28o/D6tL9U7Kj5xYKsHuXC8PjPkSBaHZ3om8=
> =jjDB
> -----END PGP SIGNATURE-----
>



-- 
Kyle Kelley (@rgbkrk <https://twitter.com/rgbkrk>; lambdaops.com,
developer.rackspace.com)

--001a1147e69a47fbb8051b66b36d--
