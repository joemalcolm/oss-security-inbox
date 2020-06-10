X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["837" "Wednesday" "10" "June" "2020" "13:44:27" "+0200" "Greg KH" "gregkh@linuxfoundation.org" "<20200610114427.GA1895802@kroah.com>" "19" "Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" "^Date:" nil nil "6" "2020061011:44:27" "[oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" (number mark "        gregkh@linux Jun 10   19/837   " thread-indent "\"Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768\"\n") "<CALJHwhSuSiuK+gU07w1-MNoB1sW0XQwfpYCOzcXhky5K5Ynj9w@mail.gmail.com>" ("<CALJHwhSuSiuK+gU07w1-MNoB1sW0XQwfpYCOzcXhky5K5Ynj9w@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5735 invoked by uid 550); 10 Jun 2020 13:28:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15435 invoked from network); 10 Jun 2020 11:44:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1591789475;
	bh=EXnmMOPcrZvmdPePywndONzXa7UENAZnJ7MOdjdW/Zs=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=douPD7MWOmqujQWEBItlV8Im+ut+OnyBxovsBIu865oEDceL3jJIRId66rq80Y8FS
	 buVrqWta2Q1rfS4PpBAB5ZMSv3GGOMKsyHn3V0yTKOB/U1+DTzmoB0SpTQdyPhPCaa
	 0khG+cBd7AsAB9oQAlILu35Go4dw/kuXCyXn31Nc=
Message-ID: <20200610114427.GA1895802@kroah.com>
References: <CALJHwhSuSiuK+gU07w1-MNoB1sW0XQwfpYCOzcXhky5K5Ynj9w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALJHwhSuSiuK+gU07w1-MNoB1sW0XQwfpYCOzcXhky5K5Ynj9w@mail.gmail.com>
Date: Wed, 10 Jun 2020 13:44:27 +0200
From: Greg KH <gregkh@linuxfoundation.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] kernel: Multiple SSBD related flaws
 CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768
To: oss-security@lists.openwall.com

On Wed, Jun 10, 2020 at 09:21:03PM +1000, Wade Mealing wrote:
> A number of flaws were discussed in the registers article this morning
> ( https://www.theregister.com/2020/06/09/linux_kernel_bugs_spectre )
> which have been submitted for inclusion upstream already.
> 
> Listed below are the CVE's that Red Hat has assigned.  As far as I can
> tell there are no existing  CVE assignments for these flaws. I have
> not done adequate investigation to correctly identify affected
> versions of the kernel, however this is a flaw in the fix for
> CVE-2018-3639, affected systems would likely be affected by the flaws
> listed below if they required the fix.

Did you ask the authors of the patches?  I think they might have already
assigned CVEs from Google's pool, based on previous interactions with
those developers...

thanks,

greg k-h
