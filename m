X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1679" "Saturday" "23" "September" "2017" "21:23:15" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170923192315.GA17252@suse.de>" "41" "Re: [oss-security] Why send bugs embargoed to distros?" "^Date:" nil nil "9" "2017092319:23:15" "[oss-security] Why send bugs embargoed to distros?" (number mark "        meissner@sus Sep 23   41/1679  " thread-indent "\"Re: [oss-security] Why send bugs embargoed to distros?\"\n") "<20170923134418.6e460656@pc1>" ("<20170923134418.6e460656@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25876 invoked by uid 550); 23 Sep 2017 19:23:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25858 invoked from network); 23 Sep 2017 19:23:28 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170923192315.GA17252@suse.de>
References: <20170923134418.6e460656@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170923134418.6e460656@pc1>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Sat, 23 Sep 2017 21:23:15 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Why send bugs embargoed to distros?
To: oss-security@lists.openwall.com

On Sat, Sep 23, 2017 at 01:44:18PM +0200, Hanno Böck wrote:
> Hi,
> 
> A few days have passed since the optionsbleed disclosure. Some
> interesting things have surfaced, e.g. the fact that it was apparently
> discovered already in 2014, but nobody noticed it was a security bug.
> 
> 
> But I'd like to discuss something else:
> I had informed the distros mailing list one week earlier about the
> upcoming disclosure with a bug description and links to the already
> available patch.
> My understanding is that the purpose of the distros list is that
> updates can be prepared so after a disclosure the time between "vuln is
> known" and "patch is available" is short.
> However from all I can see this largely didn't happen.
> 
> Debian+Ubuntu took more than a day after disclosure to fix. According
> to the Debian bug tracker the bug got only opened after the public
> disclosure[2]. I see no sign that any work on a fix began before the
> disclosure.
> 
> If I can trust Red Hat's CVE tracker [3] there still are no fixed
> packages available. Also I haven't found any info about updated

https://www.suse.com/security/cve/CVE-2017-9798/

We have released openSUSE Leap and SUSE Linux Enterprise 12 SP2/SP3 updates.

Where did you look and not find this?

SUSE has rated the issue as moderate severity (bordering on important),
as exploitability seems difficult and not targetable.

So we were not targeting a "same as CRD day release" as with other more
severe issues, but have now released updates in the next days after the CRD.

In general predisclosure is useful for us, same as for the others for 
evaluation and preparation of critical security issues.

Ciao, Marcus
