X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["970" "Tuesday" "9" "October" "2018" "11:21:02" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20181009092102.oyyogeqoocjm6xmi@lorien.valinor.li>" "26" "Re: [oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit available)" nil nil nil "10" "2018100909:21:02" "[oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit available)" (number mark "U       carnil@debia Oct  9   26/970   " thread-indent "\"Re: [oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit available)\"\n") "<20181008223132.bmjr3z5agaq224et@intrepid>" ("<EC9F9CC1-4943-4CD5-8463-F40DF6BCA886@stubman.eu>" "<20181008223132.bmjr3z5agaq224et@intrepid>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3498 invoked by uid 550); 9 Oct 2018 09:21:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3461 invoked from network); 9 Oct 2018 09:21:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aLOrIvUlxi4KRmtRqiTKrFQty1rV0/8R0yGO46BZyKU=;
        b=tvRI4AHMJrjV5pn208BE2X1DMXER4TXhb094bgkf/BLSteEifeszFrLPNm0hn1MdVk
         hHldBbLBrUgdOspJkYoSBVXjyNNaZVtR0qelmfgPpMOMiCpzCAaAYfxA2zIJmlQjx1dP
         fpTqRkC8r9gNjj6bK1GtzffSf7Q+ByxZ0w5gQ/rveFPvgq4XG/4p7pG73MQKfyb8R3xT
         zOwx9yuIbYB9hZakh/+BiY4NUQ2RQyDDnV7nlgg4Z+pJlq2QUgX1LENAU9jFHuODj7Qx
         Oqy63uhNtSCQSOL5RPtuFB6Jq+t9bDlrZ8pm7kKWSIhvuqtg+sxS/jGMjCWUZXJVFGDq
         36bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=aLOrIvUlxi4KRmtRqiTKrFQty1rV0/8R0yGO46BZyKU=;
        b=WH4xsj7PUGAmpb0xvVOZsebcAhJxx3eig0r2tXEjiDMRhO6nDHeASzpIe+K/j7HVVa
         7oYUTvNXi/Vw064U9hbR+U/6h8afPSJ0hjozpX9my9OlH+PiOF07oFuN70Nl0XqSJBna
         CD5G2QaEQEhhHvLsMkr3nUmT8qtaNV74es3UHEkI5jiH89WwfBFClgcWrqfvn+YrUG7T
         YVmfZUQmMySUj3AZb4MfMeSmYAKNuW3km9WpnZNrON57xivkgUv7bJHnmlPcYfxRXIKl
         vZheas3Kh2H+mtn3+qSu98JN57perzdVN1Mzbh7K7Q4lCDQRs2InFV08qJKTyvReNtQU
         bFBw==
X-Gm-Message-State: ABuFfojIDTrCCk7zjQXv1yMiRrlb4wQowUS+Yvdltc8Hjwgjpl+O/y2R
	k0TmSP6AYyBWHSuoEVPLr2qKSJNFAWU=
X-Google-Smtp-Source: ACcGV62T8GVfRrAv8NZ3wsolsJpFF+osSaiH4lSUzlBnL9RZFxRVwD2zpEsT31f/bXBU0aQZ3jy6Hg==
X-Received: by 2002:adf:e5c7:: with SMTP id a7-v6mr868414wrn.178.1539076866646;
        Tue, 09 Oct 2018 02:21:06 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 9 Oct 2018 11:21:02 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20181009092102.oyyogeqoocjm6xmi@lorien.valinor.li>
References: <EC9F9CC1-4943-4CD5-8463-F40DF6BCA886@stubman.eu>
 <20181008223132.bmjr3z5agaq224et@intrepid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181008223132.bmjr3z5agaq224et@intrepid>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] net-snmp 5.7.3 unauthenticated remote Denial of
 Service (exploit available)

Hi,

On Tue, Oct 09, 2018 at 12:31:32AM +0200, Alexander Bergmann wrote:
> Hi Magnus,
> 
> thanks for your report. I can reproduce VULN#2 (CVE-2018-18065) with our
> net-snmp-5.7.3 version (sle12/sle15). Our net-snmp-5.4.2.1 version seams
> to be unaffected.
> 
> Regarding your VULN#1 (CVE-2018-18066) I noticed that the patch was
> already applied to our code base and CVE-2015-5621 was assigned. The
> issue was already mentioned here at oss-security.
> 
> https://www.openwall.com/lists/oss-security/2015/07/31/1
> 
> I didn't check the details yet, but if the new CVE is a duplicate,
> please contact NIST about it.

Is it actually the same issue? I'm asking because for instance, there
was indeed earlier CVE-2015-5621 and CVE-2018-1000116, which both were
adressed with this same commit, but are considered two separate
issues. So if CVE-2018-18066 is different from CVE-2015-5621 or
CVE-2018-1000116, the assignment would not be a duplicate.

Regards,
Salvatore
