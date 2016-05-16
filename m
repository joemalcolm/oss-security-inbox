X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["897" "Monday" "16" "May" "2016" "09:53:24" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160516075324.GA10354@eldamar.local>" "25" "Re: [oss-security] CVE Request: gdk-pixbuf: Additional fixes to protect against overlows in pixops_* functions (similar to CVE-2015-7674)" nil nil nil "5" "2016051607:53:24" "[oss-security] CVE Request: gdk-pixbuf: Additional fixes to protect against overlows in pixops_* functions (similar to CVE-2015-7674)" (number mark "U       carnil@debia May 16   25/897   " thread-indent "\"Re: [oss-security] CVE Request: gdk-pixbuf: Additional fixes to protect against overlows in pixops_* functions (similar to CVE-2015-7674)\"\n") "<20160512092302.GA13770@lorien.valinor.li>" ("<20160512092302.GA13770@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21614 invoked by uid 550); 16 May 2016 07:53:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21586 invoked from network); 16 May 2016 07:53:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yEozTwbfwcxU+NQPPXreq78MPMOcAf91YDgh22yGbcY=;
        b=p+G/MPKXBvmrdJt5YuRcEts1X+aMLELixhCXAVJIDjBl3toFsHXZS3ahLXOv7nM3jw
         NUv0iTXuf8zQT6vFpNmZRgsSj5r/jGR+hSWDpx2n7fxgQ3gFST8FX387zjeQQnarx3rO
         J7VuDwSBRLf0LlbIZtl9gtUi+mEmx8y4hz4lZrP259cOcNFSFljr8MmmlPTfzwjkUlcZ
         4gbN8HAAMO3PrSBWACxFxPUXAv4IJ8EygLIB4VkXeplfzKIVOR2xo+s4DyJDFl+ny6hO
         IPIN324E+nJeGt1JFepsqie8Bz7Oe/MLTYC0xsPa712YPArg8vfk5xp28H8nUeMXY87I
         X0cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=yEozTwbfwcxU+NQPPXreq78MPMOcAf91YDgh22yGbcY=;
        b=LZ86JuBzjD7wLJns8VIo+ks8fr6HH9oZpXcFCuHj8TS7JxOnd8s/wa8CfYVtk0972U
         AvqU5ASav5dnFIHAOAOzWsmm2Ux8uXIzGJXA/utyGHI5FvPB4vQCqwBWrUpC7zIiUY6G
         rf8d+9a5fmK5PdI1pIyQlm1RlO3FVO5nNTNbh30ZjFdYT6i2zG+1yv4hqUkoThFOhLuF
         qMajHf8kzmdSlPeyeSwFY/degmdnFQVpM7yRFhanL1tJcPI4sr+r0fSxE5GEiK8nYwba
         8vSf8bzMlNFEa2ajrmpUXKj7gSRoNymnLPa2gTJuVyQeDcXM9YfcWax+kaLw/++mO1tf
         R6GA==
X-Gm-Message-State: AOPr4FUkn/Rx4RLKn4YqcAdc3hvXVgXVmpd4bqMueJ1qIaol8ppCBBcBH3e+wrCTjXb+ug==
X-Received: by 10.194.26.41 with SMTP id i9mr31843686wjg.114.1463385206314;
        Mon, 16 May 2016 00:53:26 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 16 May 2016 09:53:24 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Message-ID: <20160516075324.GA10354@eldamar.local>
References: <20160512092302.GA13770@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160512092302.GA13770@lorien.valinor.li>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [oss-security] CVE Request: gdk-pixbuf: Additional fixes to
 protect against overlows in pixops_* functions (similar to CVE-2015-7674)

Hi,

On Thu, May 12, 2016 at 11:23:02AM +0200, Salvatore Bonaccorso wrote:
> Hi
> 
> CVE-2015-7674, an interger overflow flaw in the pixops_scale_nearest
> function, was fixed by
> 
> https://git.gnome.org/browse/gdk-pixbuf/commit/?id=e9a5704edaa9aee9498f1fbf6e1b70fcce2e55aa
> 
> There is another commit in the gdk-pixbuf repository to fix overflows
> in the pixops_composite_nearest, pixops_composite_color_nearest and
> pixops_process functions:
> 
> https://git.gnome.org/browse/gdk-pixbuf/commit/?id=dbfe8f70471864818bf458a39c8a99640895bd22
> 
> Can you aassing an additional CVE for this since the scope for
> CVE-2015-7674 was for the pixops_scale_nearest function?

I realise I did not made that clear: The two commits were not fixed in
the same release, the initial one resulting in CVE-2015-7674 is
contained in 2.32.1, wereas the second commit came later in 2.33.1.

Regards,
Salvatore
