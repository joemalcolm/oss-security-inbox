X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2530" "Thursday" "31" "May" "2018" "17:42:42" "+0100" "Pete Batard" "pete@akeo.ie" "<6d79aec1-dd2e-a18e-6a4e-d9105f740d64@akeo.ie>" "71" "[oss-security] Re: CVE request: rufus" "^Date:" nil nil "5" "2018053116:42:42" "[oss-security] Re: CVE request: rufus" (number mark "        pete@akeo.ie May 31   71/2530  " thread-indent "\"[oss-security] Re: CVE request: rufus\"\n") "<77B308CE34E747C3AE00239F60DBAEE4@W340>" ("<77B308CE34E747C3AE00239F60DBAEE4@W340>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13326 invoked by uid 550); 31 May 2018 18:42:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19552 invoked from network); 31 May 2018 16:42:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=akeo-ie.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=rOL4YnmzlXcStJcXyhC5RcwoLtUzGqtaP77oumrWBYc=;
        b=MDEHHmwJGC9kcqaF1BFSn4WVTikmJPI+kRoOqdgSo6+4AmnErEM8rKGP9XFvnCKLtg
         qmzJeBNB624C8h8KY1XdnnxjEM0X6lu2LIEowuIJUuvehlEue7JJ5FarJEgoKBX5bJ+z
         U575bp2H6GrFChmjOl9JokiJju/ycjY2gHb2h2OhYfX9AMjLHsqfMYDELnLSw+x1o8v6
         CwsN7VPmGo+aNfmk1hdwV8zl50aHhdaYr2xFvQn4twpRDExayeSzPk4hPdFDM4QT87zu
         m728PcE+CN7nekb05jZlpiMyygC8AL6xcKfWKbmvTDWV9Rovu9WkhDoEEh7rcD33SaRj
         Yk3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rOL4YnmzlXcStJcXyhC5RcwoLtUzGqtaP77oumrWBYc=;
        b=AVpfBxaqmDZZFRqde3+gjliTsI4+CXwc+ykE3ah58lgg9LP7O3/MUba047haFPwLv5
         kl8tGs4zlIW2hGcE6tpl4vP1zcaVZ2RE8tnysceElErF4b1xqxjWXmq+UUusDx6I31cv
         VWIDtSdPBu4YxDcWBSkTnlJQUdC+nsSeAZex5Pe6Saj0FHRul5+U//M2eenYqO+mr3Z9
         wGA1BZnWlv+MmRdNRY0SLu4U+bNIUVWivo+xK6E1xiSE7k1bKJQKAn6Rvm062smYouPd
         99q48GddF2pac5NUgra0b1sDooMvq/osPX0n8iK8OMN+qk6k7IGNSWwxLCgfoXmmuOgb
         xQKg==
X-Gm-Message-State: ALKqPwfFxCjPCjDMnRTR8ihm5Wr5r5YBp79GBFQ6L5xgis7p6Fas6l2S
	TA02JfOZzi3Y+EsGHmGqJHpNGasEgDs=
X-Google-Smtp-Source: ADUXVKIatGZF78n3SCbNa8sGpIrPEuO89kT/uLBYr+1mhLl/F2HoOoTBaPPwlzgEqmJjMiucsaDVQQ==
X-Received: by 2002:a50:f534:: with SMTP id t49-v6mr8657631edm.42.1527784964576;
        Thu, 31 May 2018 09:42:44 -0700 (PDT)
References: <77B308CE34E747C3AE00239F60DBAEE4@W340>
Message-ID: <6d79aec1-dd2e-a18e-6a4e-d9105f740d64@akeo.ie>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <77B308CE34E747C3AE00239F60DBAEE4@W340>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Date: Thu, 31 May 2018 17:42:42 +0100
From: Pete Batard <pete@akeo.ie>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: rufus
To: Stefan Kanthak <stefan.kanthak@nexgo.de>, oss-security@lists.openwall.com

Hi Stefan,

Thank you very much for your very depreciative and less than informative 
report.

Since a vulnerability report works a lot better with an actual 
exploitation scenario conducted with the actual application, that we can 
look into, we will be waiting on that from you.

Also, FYI, we did apply mitigation for #1 (DLL sideloading attacks) very 
shortly after the time it became publicized:
https://github.com/pbatard/rufus/commit/8473e9ef561295fd10dd9526010c1fd1cb1e6701

And of course, with proper non disparaging involvement of security 
researchers, who subscribe to the established responsible disclosure 
policy of their profession, we are always eager to improve on our 
mitigation fixes, if it turns out they aren't adequate.

However, we would appreciate if you refrained from jumping to erroneous 
conclusion about Rufus development being conducted by "bloody 
beginners", when it is clear that some of the "beginner's" 
vulnerabilities you list have long had some mitigation factors applied.

All the best,

/Pete


On 2018.05.31 17:05, Stefan Kanthak wrote:
> Hi @ll,
> 
> like its predecessors, the recently (2018-05-29) published version
> 3.0 of "Rufus" (<https://rufus.akeo.ie/downloads/rufus-3.0.exe> and
> <https://rufus.akeo.ie/downloads/rufus-3.0p.exe>) is riddled with
> bloody beginners errors, which allow arbitrary code execution WITH
> escalation of privilege.
> 
> Vulnerability #1
> ~~~~~~~~~~~~~~~~
> 
> See <https://cwe.mitre.org/data/definitions/426.html>
> and <https://cwe.mitre.org/data/definitions/427.html>
> plus <https://capec.mitre.org/data/definitions/471.html>.
> 
> Additionally see Microsoft's developer guidance
> <https://technet.microsoft.com/en-us/library/2269637.aspx>,
> <https://msdn.microsoft.com/en-us/library/ff919712.aspx>,
> <https://msdn.microsoft.com/en-us/library/ms682586.aspx> und
> <http://blogs.technet.com/b/srd/archive/2014/05/13/load-library-safely.aspx>
> for avoiding this bloody beginner's error.
> 
> Also see
> <https://insights.sei.cmu.edu/cert/2008/09/carpet-bombing-and-directory-poisoning.html>
> and
> <http://blog.acrossecurity.com/2012/02/downloads-folder-binary-planting.html>
> plus
> <https://insights.sei.cmu.edu/cert/2016/06/bypassing-application-whitelisting.html>
> for "prior art".
> 
> 
> Vulnerability #2
> ~~~~~~~~~~~~~~~~
> 
> See <https://cwe.mitre.org/data/definitions/377.html>
> and <https://cwe.mitre.org/data/definitions/379.html>
> plus <https://capec.mitre.org/data/definitions/29.html>
> 
> stay tuned
> Stefan Kanthak
> 

