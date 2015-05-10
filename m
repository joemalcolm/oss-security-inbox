X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1142" "Sunday" "10" "May" "2015" "13:06:48" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150510110648.GA28525@eldamar.local>" "38" "Re: [oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability" nil nil nil "5" "2015051011:06:48" "[oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability" (number mark "        carnil@debia May 10   38/1142  " thread-indent "\"Re: [oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability\"\n") "<20150416140557.72e3e4d3@redhat.com>" ("<CAPcZBq7YrwpZDJNZ58yQjcYHTZ43qoQWCoUAet9Eb7Dn2sruBQ@mail.gmail.com>" "<20150416140557.72e3e4d3@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7636 invoked by uid 550); 10 May 2015 11:07:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7602 invoked from network); 10 May 2015 11:07:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=z3Fx7f88cqcgut0pfF7udP7az5szP+DoC4+ildipR3Y=;
        b=YY8CC8nDB5kUlx05pnp0sB4Jd6VHJwRPQgOibI7yXNeuLsQ9Ii/xWrNqc+6ik84XDC
         3iyHoEV0GvgBtslDxjcaiKjPNDXZaO1H2PHO+Yn0hfWSkE5ObtSTvHoS0hbBLPdNo+2a
         6JZOyvIqQcAYDmR0psyP21wE7jZRGJlPI1Vfa9NNeSnAKwx99Qgr/yL1eCCdQMWkVEgJ
         8xxj8RkUSGU8VRNTLY4BohEDMVGGQb7khKuLiXWU0SI7hDmnDbrMbTpODtvCkYDMAizU
         ArcL7kjdD0dwa2m4Oop97qdoXPgtDNt8KqqgHhrFiopscq9Sj4ga4FrGtCSPbSuwxgca
         32cQ==
X-Received: by 10.194.242.166 with SMTP id wr6mr11643975wjc.76.1431256010556;
        Sun, 10 May 2015 04:06:50 -0700 (PDT)
Message-ID: <20150510110648.GA28525@eldamar.local>
References: <CAPcZBq7YrwpZDJNZ58yQjcYHTZ43qoQWCoUAet9Eb7Dn2sruBQ@mail.gmail.com>
 <20150416140557.72e3e4d3@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150416140557.72e3e4d3@redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Sun, 10 May 2015 13:06:48 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] net-snmp snmp_pdu_parse() function incompletely
 initializaition vulnerability
To: oss-security@lists.openwall.com

Hi,

On Thu, Apr 16, 2015 at 02:05:57PM +0200, Stefan Cornelius wrote:
> On Mon, 13 Apr 2015 13:44:04 +0800
> 罗大龙 <luodalongde@gmail.com> wrote:
> 
> > HI there,
> > 
> > 
> > 
> > Greeting! This is Qinghao Tang from QIHU 360  company, China. I am a
> > security researcher there.
> > 
> > I'm writing to apply for a CVE ID, for a 0day vulnerability in
> > net-snmp. Please refer to below report.
> > 
> 
> The upstream patch is here:
> https://sourceforge.net/p/net-snmp/code/ci/f23bcd3ac6ddee5d0a48f9703007ccc738914791/
> 
> As linked from the commit, the (currently restricted) upstream bug is:
> https://sourceforge.net/p/net-snmp/bugs/2615/
> 
> Although this leads to crashes at different locations, all of them can
> be attributed to snmp_pdu_parse() leaving stale netsnmp_variable_list
> items in the list, so I think one CVE should be enough.
> 
> 
> In case anyone is interested, the Red Hat bug is:
> https://bugzilla.redhat.com/show_bug.cgi?id=1212408

Explicitly adding MITREs CVE assignment team to the CC list.

Any news on this? Unfortunately the upstream bug report ist still
restricted.

Thanks and regards,
Salvatore
