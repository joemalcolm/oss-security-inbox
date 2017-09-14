X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1438" "Thursday" "14" "September" "2017" "19:21:40" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170914172140.gncnsqipfsnaa2yi@eldamar.local>" "38" "Re: [oss-security] GNU Emacs 25.2 enriched text remote code execution" "^Date:" nil nil "9" "2017091417:21:40" "[oss-security] GNU Emacs 25.2 enriched text remote code execution" (number mark "        carnil@debia Sep 14   38/1438  " thread-indent "\"Re: [oss-security] GNU Emacs 25.2 enriched text remote code execution\"\n") "<20170912052251.yunyqonyel2hibg4@lorien.valinor.li>" ("<09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>" "<20170911185857.hfti4mrponqoddin@eldamar.local>" "<20170912052251.yunyqonyel2hibg4@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17459 invoked by uid 550); 14 Sep 2017 17:21:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17431 invoked from network); 14 Sep 2017 17:21:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zcOYsuBcKa8b1KLxoOyQw4aXnh35yPFdLSmLLHE2ELs=;
        b=lcW2+kuDfd2USKXzanUe7sxwUK6g14COc92YJPj2KOouiqU6LQrE5NLJCZr9DlWoxU
         ERq2Cb7uG/mgYQz4z9cbiE7Kda1pdDJi95GNhd34IiNXR6Cojj8zadG9Sb/VHYqru9Wc
         TUaItTo9OktbPFq9ZtigKXu2+/cvFYvcWzSum2WiaHH0nq22zm/jwIhRS+mglI2lh4VS
         uMvX2cFo0WG8qWMEx9SkEQUDnPQS8QKwva6a7sa1jCGUYFYOhbOjoKV3AZmkeKBkh2d9
         njIfNlXKBEXy0m12eW/5qMv0OcHTwJs1nI1q+1BgwDDWatWxrqBJpb3fp5QGeDvLGamy
         g+9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=zcOYsuBcKa8b1KLxoOyQw4aXnh35yPFdLSmLLHE2ELs=;
        b=KCB7Xoe9L/SXe86DUD5+LFL1jN/UeIDEYwXWI9oCABIYNReY6D/gRfrQkBK5JdD4QC
         Ms3drjpYckmIPoOTUTr16q/YN6z9xONDVfVbB4og3XD3YeUhj/kB3ShBCUoBNfGIdDio
         +tifsWmPPFC4l5C42seTDrsa9xF9kijuJ2TjhzYsGUgOLbRvBDiwGPMXbAzSTjkvRFdQ
         UY1p5j9yCJ9lHixTn2Mx+lCX/u6OT8dmp6WkUAOJMRgereKE1gQnI9vmECQIAjBctPAK
         Gat1SMhxdSrCcHQ73A5k9FYbzL+G/qbGknGapv2E9UwSsW5ddLoPqziSQ3rp1oahkU0/
         jNvw==
X-Gm-Message-State: AHPjjUh6K32tW0vJRGUgbwzXRFpVNdEdyRU/TQ8xT/ytdg6U1SwjgNxE
	RsLTto32eOlw5F1uz4S0xQA=
X-Google-Smtp-Source: AOwi7QB3mOSsHGo1Y1mwDAQmYnxojTPwdJfxNuQAEgdTmJXvqEz7M9fkLe4UI3WUV5Frz0ybXlcDPA==
X-Received: by 10.28.102.213 with SMTP id a204mr571073wmc.151.1505409701932;
        Thu, 14 Sep 2017 10:21:41 -0700 (PDT)
Message-ID: <20170914172140.gncnsqipfsnaa2yi@eldamar.local>
References: <09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>
 <20170911185857.hfti4mrponqoddin@eldamar.local>
 <20170912052251.yunyqonyel2hibg4@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170912052251.yunyqonyel2hibg4@lorien.valinor.li>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Thu, 14 Sep 2017 19:21:40 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] GNU Emacs 25.2 enriched text remote code execution
To: oss-security@lists.openwall.com

Hi

On Tue, Sep 12, 2017 at 07:22:51AM +0200, Salvatore Bonaccorso wrote:
> Hi
> 
> On Mon, Sep 11, 2017 at 08:58:57PM +0200, Salvatore Bonaccorso wrote:
> > Hi Paul,
> > 
> > On Sun, Sep 10, 2017 at 11:56:20PM -0700, Paul Eggert wrote:
> > > GNU Emacs is an extensible, customizable, free/libre text editor and
> > > software environment.  When Emacs renders MIME text/enriched data (Internet
> > > RFC 1896), it is vulnerable to arbitrary code execution. Since Emacs-based
> > > mail clients decode "Content-Type: text/enriched", this code is exploitable
> > > remotely. This bug affects GNU Emacs versions 19.29 through 25.2.
> > > 
> > > Although we know no efforts to exploit this in the wild, exploitation is easy.
> > [...]
> > > == Timeline ==
> > > 
> > > 2017-09-04. Bug reported to the Emacs bug tracker by Charles A. Roelli.
> > > 
> > > 2017-09-07. POC for remote code execution sent to the maintainers of Emacs
> > > and Gnus (Reiner Steib <Reiner.Steib@gmx.de>, private mail).
> > > 
> > > 2017-09-08. Patch (by Lars Ingebrigtsen <larsi@gnus.org>) to disable the
> > > problematic code and mitigation (private mail).
> > > 
> > > 2017-09-09. Patch committed in main development repository.
> > 
> > Have you requested a CVE for this issue?
> 
> FTR, it seems this was submitted to DWF already as per:
> https://debbugs.gnu.org/cgi/bugreport.cgi?bug=28350#63

CVE-2017-14482 was assigned for this issue.

Regards,
Salvatore
