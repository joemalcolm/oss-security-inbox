X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["242" "Monday" "10" "July" "2017" "14:03:22" "-0700" "Stanislav Malyshev" "smalyshev@gmail.com" "<909d8d81-b9fb-6f28-60b7-325406baecd2@gmail.com>" "13" "[oss-security] Re: PHP CVE assignments: [cve-request@mitre.org: Re: [scr358150] 7 PHP CVEs]" "^Date:" nil nil "7" "2017071021:03:22" "[oss-security] Re: PHP CVE assignments: [cve-request@mitre.org: Re: [scr358150] 7 PHP CVEs]" (number mark "        smalyshev@gm Jul 10   13/242   " thread-indent "\"[oss-security] Re: PHP CVE assignments: [cve-request@mitre.org: Re: [scr358150] 7 PHP CVEs]\"\n") "<20170710134001.GF24936@suse.de>" ("<20170710134001.GF24936@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17710 invoked by uid 550); 10 Jul 2017 21:10:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13756 invoked from network); 10 Jul 2017 21:03:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=qno4WqqN2EJKJY7ERStgnBpy+CtrFrtCmOceTIsPCIk=;
        b=hzovCcohbmy/U0tnwatmWRBZuAgLAZBu4Tn+/xSiUXZjUkwQ0XsCtbCpbsXrRnHfyM
         CuhO4X8aX+TUBgAJOgpyaByR4+tnijIqBEVoQAUYW965RTV4GhodII9q/LX+ru0MSZ4D
         JKjEDXbxKHFc9wGAwdnJre0PGmyjsBY1BxHt8lUJaWExt62Qga+3vHaYiN0K/vwzUnN1
         nHByn8Mf8OmmpfM9a4VCHKTriCry/72TVTUpQp0kBoRkw35xqQsoEVeiyPuIyBuqJF9V
         cb3rwhX4kQwCNT6InwPa+vuK8O6Pd3gLNF/Vj597q6O4+iAp8R4wT5rGqJDrZ3upnlNd
         tvcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qno4WqqN2EJKJY7ERStgnBpy+CtrFrtCmOceTIsPCIk=;
        b=SX3l8onMhd+RlSq1z52AZc4zzhl9hB8gMUc4Of3aAWCRIvulsjbQEOH/h/GKdm+OF+
         875ZGgJTJsv/bHlGTX8NHHsJY74mCkeA+lhSyCPk6WHbipBTbj8g8sXQ4b9oUEZy+18o
         zPF3NFt6rnIJmJcujdWxf/HoUYOS6/1OwxdRBORaQcuS9yaOEG0am3MMsr5IHTc51lsT
         UdTvXiiW9FZ+YL/Vp/FmlvvK/iE0kGYX4cs654hxHvhAtB7kWv/E/zUdjlA8V0egXPnU
         A6B/Ggq0zMF8qMObmcFxe5hHjMAn7APUkTsX2Oq7e2Sh5wlpujO2RHjkuIr808jjXf+m
         0/sg==
X-Gm-Message-State: AIVw111Faa6jmTPb0xCQqsqF8DsYuIM+8iyAXUl5ohLKGVu/pFm5WW45
	Hce/JKrGVkv/Ng==
X-Received: by 10.84.211.137 with SMTP id c9mr19717307pli.96.1499720604204;
        Mon, 10 Jul 2017 14:03:24 -0700 (PDT)
References: <20170710134001.GF24936@suse.de>
Message-ID: <909d8d81-b9fb-6f28-60b7-325406baecd2@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:52.0)
 Gecko/20100101 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170710134001.GF24936@suse.de>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Mon, 10 Jul 2017 14:03:22 -0700
From: Stanislav Malyshev <smalyshev@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: PHP CVE assignments: [cve-request@mitre.org: Re: [scr358150] 7
 PHP CVEs]
To: Marcus Meissner <meissner@suse.de>,
 OSS Security List <oss-security@lists.openwall.com>, security@php.net,
 kaplanlior@gmail.com

Hi!


> Raw form of PHP CVE assignments.
> 
> If I made a mistake feel free to update via webform or mail me so I can do.

Looks like CVE-2017-11145 and CVE-2017-11146 are actually exactly the
same bug.

-- 
Stas Malyshev
smalyshev@gmail.com
