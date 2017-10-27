X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1533" "Friday" "27" "October" "2017" "18:09:53" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20171027160953.vriub4ox5ztmyzkj@eldamar.local>" "46" "Re: [oss-security] Advisory X41-2017-010: Command Execution in Shadowsocks-libev" nil nil nil "10" "2017102716:09:53" "[oss-security] Advisory X41-2017-010: Command Execution in Shadowsocks-libev" (number mark "U       carnil@debia Oct 27   46/1533  " thread-indent "\"Re: [oss-security] Advisory X41-2017-010: Command Execution in Shadowsocks-libev\"\n") "<0b737631-4f6a-7fdf-f709-4957a8cd5ef2@x41-dsec.de>" ("<0b737631-4f6a-7fdf-f709-4957a8cd5ef2@x41-dsec.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11525 invoked by uid 550); 27 Oct 2017 16:10:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11503 invoked from network); 27 Oct 2017 16:10:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Df7XPrptNm94d2i9hqi4zGh3/aBKB2qMiYnnWBoimjs=;
        b=CjL/wjud0aSu8sYhqoQWGAhfuFKGNzcyflJrjS87K3O3ppnLuz2LmzXTRoMlM9yi91
         j2Rqcs75zStA7gXNHlR9qElbQNSs1KL1SOYZVAnXkGX3WiDjfsJ4EmEinzUGcNebg2XN
         AGFFJOoq/HX7uq0Up3h03FleeG4OG4D/SgZhgbo+oZhq50qwTrWqFhu9FkqLLFWy8apn
         97NmbiOr+t8+i4b28JiXT0/XoJttXjWXBILUFhc8DttF0++nxyAcMH4q5CnLx9veZMwY
         eRcPw97lHXSvZwhsqUt+EhL/SRAZCAalxlwZaGCA627c5g+F2dWwcv7in2mGjHn6njrc
         Xesw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=Df7XPrptNm94d2i9hqi4zGh3/aBKB2qMiYnnWBoimjs=;
        b=dtWTEwWwoFKMdyGEbCmrMkc6xAkovlh/X6AEmrU8Vrci5qQ3hIYYSDDHLUnsWyWa6k
         U0Ax1LmhihbGiVsh0jnk3gYoACQ+lMlCTTQ63uM5/eO9IHllNkCOmgdMvs7BIS0Jait2
         2ZJiQvnkCXiHTWGG+oJlmRpvh3q3uZS2sgEv31mooSLQx1N+j1Ou7m82GdrA3DREyvq6
         eGRX1j+0BCDIWCvDmQaA9WjDNqDX/s2dRucYF5huDItf0gOstRlG/GsNFhQpPEYwXI33
         JoNKvI9DDQLBsRRivQOi1RhhTaW+nuSVN+N+Ohl4ZkAbTMvzqAf19rsiqLSBT9/DiJvN
         R+BA==
X-Gm-Message-State: AMCzsaW/EvCIwbxcdsLLeYKEWBXKBEK1B55cDYGHEEx9czfDUeozM+Jq
	IV1sc6wT4tp6vozqld3F/6xDsg==
X-Google-Smtp-Source: ABhQp+SBWsn/dQL9yIKEyf1l3tNnclluOLSWNhfSeMJm7cnS1PR+TBIPYOltIpYdZQPM1sDSrnFCKA==
X-Received: by 10.28.214.134 with SMTP id n128mr918030wmg.59.1509120595032;
        Fri, 27 Oct 2017 09:09:55 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 27 Oct 2017 18:09:53 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
Cc: oss-security@lists.openwall.com
Message-ID: <20171027160953.vriub4ox5ztmyzkj@eldamar.local>
References: <0b737631-4f6a-7fdf-f709-4957a8cd5ef2@x41-dsec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0b737631-4f6a-7fdf-f709-4957a8cd5ef2@x41-dsec.de>
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: [oss-security] Advisory X41-2017-010: Command Execution in
 Shadowsocks-libev

Hi

On Fri, Oct 13, 2017 at 06:44:21PM +0200, X41 D-Sec GmbH Advisories wrote:
> 
> X41 D-Sec GmbH Security Advisory: X41-2017-010
> 
> Command Execution in Shadowsocks-libev
> ======================================
> 
> Overview
> --------
> Severity Rating: High
> Confirmed Affected Versions: 3.1.0
> Confirmed Patched Versions: N/A
> Vendor: Shadowsocks
> Vendor URL: https://github.com/shadowsocks/shadowsocks-libev
> Vector: Local
> Credit: X41 D-Sec GmbH, Niklas Abel
> Status: Public
> CVE: not yet assigned
> Advisory-URL:
> https://www.x41-dsec.de/lab/advisories/x41-2017-010-shadowsocks-libev/
> 
> 
> Summary and Impact
> ------------------
> Shadowsocks-libev offers local command execution per configuration file
> or/and additionally, code execution per UDP request on 127.0.0.1.
> 
> The configuration file on the file system or the JSON configuration
> received via UDP request is parsed and the arguments are passed to the
> "add_server" function.
> The function calls "construct_command_line(manager, server);" which
> returns a string from the parsed configuration.
> The string gets executed at line 486 "if (system(cmd) == -1) {", so if a
> configuration parameter contains "||evil command&&" within the "method"
> parameter, the evil command will get executed.
> 
> The ss-manager uses UDP port 8830 to get control commands on 127.0.0.1.
> By default no authentication is required, although a password can be set
> with the '-k' parameter.

CVE-2017-15924 has been assigned for this issue.

Regards,
Salvatore
