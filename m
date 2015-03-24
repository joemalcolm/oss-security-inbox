X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1019" "Tuesday" "24" "March" "2015" "07:15:59" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20150324061559.GB16333@lorien.valinor.li>" "34" "Re: [oss-security] CVE request: Two vulnerabilities in Tor" nil nil nil "3" "2015032406:15:59" "[oss-security] CVE request: Two vulnerabilities in Tor" (number mark "        carnil@debia Mar 24   34/1019  " thread-indent "\"Re: [oss-security] CVE request: Two vulnerabilities in Tor\"\n") "<20150323181327.GA3943@pisco.westfalen.local>" ("<20150323181327.GA3943@pisco.westfalen.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15871 invoked by uid 550); 24 Mar 2015 06:16:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15851 invoked from network); 24 Mar 2015 06:16:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=bn+9f3rzUhJVh0E0fHwcMkY4mhD/4iYIQDwXGIlzb0w=;
        b=Ckl7sE26uKoYKO1mvE1FHnM85U+5lgoRNT5kpNIAptLRxjT4aYzvCe9fJgGbixUbRS
         oP7mP/2w0Kw6nTSU1xYS9vLXIMCpkx1XJO/J71gI+EwMOx/qELDSj+vVhafXZ34r9JSd
         FzyZLMg3cVSjeUEUt6Ac/JEkpsvTwQpj1B44Viq6RTM0bZwJVMNlK7RovWpYZ3Cj1Iet
         7Jvtt/6EY734+i9Lk2+agLIiKC63XOqR6aGS0sSTrjNVH3D4H5uVl4Ql4p4gqbWZFddp
         mluJZDt53eCqsatNSokC0IRzim2/plvJEFBYP5I1pHx/v/JcPDhNI2JsQrDWllzZ8IA2
         f3UQ==
X-Received: by 10.180.80.37 with SMTP id o5mr25086563wix.65.1427177761223;
        Mon, 23 Mar 2015 23:16:01 -0700 (PDT)
Message-ID: <20150324061559.GB16333@lorien.valinor.li>
References: <20150323181327.GA3943@pisco.westfalen.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150323181327.GA3943@pisco.westfalen.local>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: cve-assign@mitre.org, weasel@debian.org
Date: Tue, 24 Mar 2015 07:15:59 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE request: Two vulnerabilities in Tor
To: oss-security@lists.openwall.com

Hi all,

On Mon, Mar 23, 2015 at 07:13:27PM +0100, Moritz Muehlenhoff wrote:
> Hi,
> please assign two CVE IDs for tor:
> 
> The upstream announcement is here:
> https://lists.torproject.org/pipermail/tor-talk/2015-March/037281.html
> 
> 1.
> | Fix a remote denial-of-service opportunity caused by a bug in
> | OSX's _strlcat_chk() function. Fixes bug 15205; bug first
> | appeared in OSX 10.9.
> 
> https://trac.torproject.org/projects/tor/ticket/15205
> 
> 2.
> | A relay could crash with an assertion error if a buffer of
> | exactly the wrong layout was passed to buf_pullup() at exactly the
> | wrong  time.
> 
> https://trac.torproject.org/projects/tor/ticket/15083
> 
> The second issue has been addressed in DSA 3203:
> https://lists.debian.org/debian-security-announce/2015/msg00088.html
> (the first obviously not, since it's MacOS-specific)

There is anothr one which was fixed in the same versions, and could
potentially get a CVE:

https://trac.torproject.org/projects/tor/ticket/14129

Regards,
Salvatore
