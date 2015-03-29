X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["479" "Sunday" "29" "March" "2015" "19:43:57" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150329174357.GA2881@eldamar.local>" "19" "Re: [oss-security] CVE request: XSS in roundcube before 1.1.0" nil nil nil "3" "2015032917:43:57" "[oss-security] CVE request: XSS in roundcube before 1.1.0" (number mark "        carnil@debia Mar 29   19/479   " thread-indent "\"Re: [oss-security] CVE request: XSS in roundcube before 1.1.0\"\n") "<20150329115206.34058db2@pc1.fritz.box>" ("<20150329115206.34058db2@pc1.fritz.box>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32693 invoked by uid 550); 29 Mar 2015 17:44:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32675 invoked from network); 29 Mar 2015 17:44:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=zJMiZxVR6/rEgOsrFdqmtans8GNMEongl7MAMy378+g=;
        b=JF2RqBUKBzcCR27LFi56hAYs1Ry7tXPuCoUtnlptU4EGX7V6hp6znppuytg0mCKn7O
         zRGq7Or4TMetnj7HpNf/fnwNkm9aoduL/vwgv4Cq5dE8tE0IXSoxnWM3Su2ROiYyTHfn
         UBSR9G1ReGhFZXs7KAwQ5eNQnbq/8ZuXH6YH1KZKOEL9KxscdMb7Zw+2txv2jctY3WVv
         T/qWotmBQsFH93Zzs0QW+mjqm9nqgu0AnOwiCpV9V9lwDvxF5jeq0huohWN7ePdERVB+
         2npt4qG/OgddAeUfg7YsFn1e0PWwMTErsBraCmiRzPNpTSOSak70rcbCStl/KPei9kNu
         z6Dw==
X-Received: by 10.180.212.40 with SMTP id nh8mr15100527wic.86.1427651039391;
        Sun, 29 Mar 2015 10:43:59 -0700 (PDT)
Message-ID: <20150329174357.GA2881@eldamar.local>
References: <20150329115206.34058db2@pc1.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150329115206.34058db2@pc1.fritz.box>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: cve-assign@mitre.org
Date: Sun, 29 Mar 2015 19:43:57 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE request: XSS in roundcube before 1.1.0
To: oss-security@lists.openwall.com

Hi Hanno,

On Sun, Mar 29, 2015 at 11:52:06AM +0200, Hanno Böck wrote:
> http://trac.roundcube.net/wiki/Changelog
> Fix XSS issue in style attribute handling (#1490227)
> 
> Upstream Bug:
> http://trac.roundcube.net/ticket/1490227
> 
> Commit:
> http://trac.roundcube.net/changeset/786aa0725/github
> 
> It was not mentioned in the release notes...

This seem to have already a CVE: CVE-2015-1433, from
http://www.openwall.com/lists/oss-security/2015/01/31/6

Regards,
Salvatore
