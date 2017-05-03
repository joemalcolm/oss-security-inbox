X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1417" "Wednesday" "3" "May" "2017" "15:16:55" "+0200" "Adrien Nader" "adrien@notk.org" "<20170503131655.GA1397@notk.org>" "40" "Re: [oss-security]Sourcetree arbitrary command execution" "^Date:" nil nil "5" "2017050313:16:55" "[oss-security]Sourcetree arbitrary command execution" (number mark "        adrien@notk. May  3   40/1417  " thread-indent "\"Re: [oss-security]Sourcetree arbitrary command execution\"\n") "<CAPGxrc8ERFkDD=+x3qo2rkWPZ_3SxMGdJaAgUsEkcrBsZZ0ovg@mail.gmail.com>" ("<CAPGxrc8ERFkDD=+x3qo2rkWPZ_3SxMGdJaAgUsEkcrBsZZ0ovg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5863 invoked by uid 550); 3 May 2017 14:19:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20365 invoked from network); 3 May 2017 13:17:07 -0000
Message-ID: <20170503131655.GA1397@notk.org>
References: <CAPGxrc8ERFkDD=+x3qo2rkWPZ_3SxMGdJaAgUsEkcrBsZZ0ovg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPGxrc8ERFkDD=+x3qo2rkWPZ_3SxMGdJaAgUsEkcrBsZZ0ovg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 3 May 2017 15:16:55 +0200
From: Adrien Nader <adrien@notk.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security]Sourcetree arbitrary command execution
To: oss-security@lists.openwall.com

Hi,

On Wed, May 03, 2017, redrain root wrote:
> Hi there,
> 
> I would report a sourcetree arbitrary command execution
> 
> Sourcetree is a popular git gui client,and I found a command execution two
> month ago,
> and I report to the official atlassian but the told me they have known this
> vulnerability internal tracker and they will fix it in next version but
> sourcetree has upgrade several version, this vulnerability still alive.
> So I want to disclose this vulnerability and make a copy for atlassian
> again.

Unless I'm mistaken, the source for it isn't available.

I see you've Cc'ed fulldisclosure@seclists.org and
security@atlassian.com too and it sounds more applicable to them.

> SourceTree v2.5c and prior are affected by a command injection in the
> handling of sourcetree:// scheme.
> The cloneRepo action with ‘ext’ is base on git-remote-ext, The git team’s
> description of the bug was:
> Some protocols (like git-remote-ext) can execute arbitrary code found in
> the URL.

You make it sound like there might be something related to
"git-remote-ext" or its (typicala) usage but you're not giving details
except that it's difficult to tell if it happens in othe software too
and the following seems to indicate it is very specific to Sourcetree:

> PoC:
> sourcetree://cloneRepo/ext::[command injection]
> Even attacker can exploit it through the browser

Best regards,

-- 
Adrien Nader
