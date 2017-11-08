X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["677" "Wednesday" "8" "November" "2017" "20:46:52" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20171108194652.fqk5alj7dhq67mqo@eldamar.local>" "18" "[oss-security] Back in Time: CVE-2017-16667: shell injection in notify-send" nil nil nil "11" "2017110819:46:52" "[oss-security] Back in Time: CVE-2017-16667: shell injection in notify-send" (number mark "U       carnil@debia Nov  8   18/677   " thread-indent "\"[oss-security] Back in Time: CVE-2017-16667: shell injection in notify-send\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9931 invoked by uid 550); 8 Nov 2017 19:47:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9902 invoked from network); 8 Nov 2017 19:47:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Z64CdG94MJ9IS9Y62eJQ+qyZJ0ZUvllbQW3fQf/96aM=;
        b=cMAE4vSlXT7u2u6GTb436tnCIkw5nWM1t9eLLX6mKKK4eMgs4IM6W4g1OjqenurMQs
         6MK+i4MsNB2TArtAJgiyZKY1b3htCkcyJaC1CsCs2J9B7TdN1PFT1i3Naml5iC7IYIEM
         aFNYqxQFfPHsNnvBFlP2AY32AYnvPu5jZeJCqRVEy07sGnZVxHRAdrfzjxuGeU6PP75S
         SyjcTHzOz7KE5vc5Aw/27PXdD+jgz1tETr6sKLJegP77hY737+btXSPnKg6u74/KWF73
         MOa3Hksp43gWFAsNVihoGlIVcROJEsv0mldRimMMyvplfvkJ0fV8ESWv1zi7aejoQtH1
         XJ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=Z64CdG94MJ9IS9Y62eJQ+qyZJ0ZUvllbQW3fQf/96aM=;
        b=n8ou0SvjWmSpEx7N5q6D5+m+z0ig/+xkoYDRVrizp0Sm+metatqvbN8T7fuLn17JSg
         vPpj7Zv78JxkW+zRslc/uEcKLb3XuDMlmmn80ai4iskdt1cL40d07Fj37ea7LpCJr5se
         yaiaA2xppv/DqeSrjqIn33IrY7rl1LGhDSTv1dbVcnIBPANLP2bStG3bWZDT0Oj2py1C
         iZJmNQUg8EPlhXh6576cDKHiJo5S63SDmUptJoyD9uM6/Rh/zHB9TsobTbx7k9PFXQRd
         Za13lzAjwumo/uu/ttykEsrj3FBhXDZyPer5LKLld21trN4YRMd8HDhDYkGXVA6Y+jcr
         Lh5Q==
X-Gm-Message-State: AJaThX60hUH1t+15cU021+LPSginwkmCSe3ZYYHrBAA7+UGdJ1pqo8Fh
	IgXaetRntqQlKes3s+pVJfyxOw==
X-Google-Smtp-Source: ABhQp+RiPyQfbPaCX2Vu4AQHW+jocd+LHXwycqUaD82XaC/huCSA0GpQjY2VhqksWFEe/Af5mrL1pg==
X-Received: by 10.28.209.200 with SMTP id i191mr1204727wmg.156.1510170413995;
        Wed, 08 Nov 2017 11:46:53 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 8 Nov 2017 20:46:52 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20171108194652.fqk5alj7dhq67mqo@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: [oss-security] Back in Time: CVE-2017-16667: shell injection in notify-send

Hi

MITRE has assinged CVE-2017-16667 for the following isue in Back in
Time, "a simple backup tool for Linux". backintime is prone to a shell
injection vulnerability via notify-sent.

Back in Time did improper escaping/quoting of file paths used as
arguments to the 'notify-send' command, leading to some parts of file
paths being executed as shell commands.

An attacker could take advantage of this flaw by crafting an
unreadable file with a specific name to run arbitrary shell commands.

Upstream report: https://github.com/bit-team/backintime/issues/834
Fixed by: https://github.com/bit-team/backintime/commit/cef81d0da93ff601252607df3db1a48f7f6f01b3

Regards,
Salvatore
