X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1025" "Sunday" "4" "December" "2016" "16:18:27" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161204151827.w6cvq2enbqdg4ido@eldamar.local>" "32" "Re: [oss-security] Re: RCE in Zabbix 2.2 to 3.0.3" nil nil nil "12" "2016120415:18:27" "[oss-security] Re: RCE in Zabbix 2.2 to 3.0.3" (number mark "U       carnil@debia Dec  4   32/1025  " thread-indent "\"Re: [oss-security] Re: RCE in Zabbix 2.2 to 3.0.3\"\n") "<d99995e4f5284443bbb2f7d7e4b9c004@imshyb02.MITRE.ORG>" ("<877f8na318.fsf@redhat.com>" "<d99995e4f5284443bbb2f7d7e4b9c004@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1697 invoked by uid 550); 4 Dec 2016 15:18:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1666 invoked from network); 4 Dec 2016 15:18:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mEkF5GsK6bRJDSxMcKcVZm532Q7yBh2osjjr6N/YAZ8=;
        b=hEWA4+WhBHYiVGWCW0g3zzMqM+JOd3I+N1swXHLcBItybtf4BhVjhSsGQbA6bQZrbW
         zAT9+FYvhsGPe7OEZ7lVDZ0nxAicPyxDiok4Lbkr7NfnVQI7ug97SB1otvPAIptcNqon
         k60wfuegrhuLbmcV+WkUm+yzTVtsezoRC9/iamhLgHPKcHNsMLLYLm7H/5rVvuo+RjgK
         xTPikWqSePmctGAVORr+AxaZPPx4rz+V+ATAPh1kXri/JgcMmagOT94p26qmeXx1k8qy
         3QxUIa5C3ujEeFM0DyBQQOez+dvzrxJXhQRMKTQxwgOZ56Z5u9bUX3NuAovLIiLW5+4e
         vWGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=mEkF5GsK6bRJDSxMcKcVZm532Q7yBh2osjjr6N/YAZ8=;
        b=lTRcT+CWyLgqOfmWSqlbD+fYR5YUjmBib7mBXvlAofCC2TF/Sndd77pIragIF3zfJr
         LbAFojgcRvEhjT9tVJGs/HOlkX40fTIKxME9VlTfpYdkD64aqfRafDIQUtWMo0ZrSHn/
         I3ZadP3uF2IvnKfmm2m6a7mOybLK1L8U2O86j6KATBA7W9cjjNadi4iJVZ7E7U71h8JP
         HkvkywoLtPW7eu8c6twCKHnZV0rW0476CWzvHgjqSnFIt48tnbzIUxmGdL4QcG9V3z1X
         bYxEdH4LL3vPx9A3ypffYsMDE7PL06KcTN2vlilcTjs3WUn8JTiA2MCCOzpV1lNQPgPW
         nKnQ==
X-Gm-Message-State: AKaTC02sPaPD3YkgYGrSE70veAjuNXhLsTeHkpuv5k9kDQ4N+/ZnjRgfSFI/iAH3laBmag==
X-Received: by 10.28.48.7 with SMTP id w7mr5301238wmw.115.1480864709115;
        Sun, 04 Dec 2016 07:18:29 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 4 Dec 2016 16:18:27 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: mprpic@redhat.com, cve-assign@mitre.org,
	James Cowgill <jcowgill@debian.org>
Message-ID: <20161204151827.w6cvq2enbqdg4ido@eldamar.local>
References: <877f8na318.fsf@redhat.com>
 <d99995e4f5284443bbb2f7d7e4b9c004@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d99995e4f5284443bbb2f7d7e4b9c004@imshyb02.MITRE.ORG>
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: Re: [oss-security] Re: RCE in Zabbix 2.2 to 3.0.3

Hi

On Tue, Nov 01, 2016 at 02:17:05PM -0400, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > https://www.exploit-db.com/exploits/39937/
> > Zabbix 2.2 < 3.0.3 - API JSON-RPC Remote Code Execution
> 
> > /api_jsonrpc.php
> 
> > "method": "script.update",
> 
> > "command": ""+cmd+""
> 
> Use CVE-2016-9140.

This has later on been reported upstream, as
https://support.zabbix.com/browse/ZBX-11483 . Upstream believes that
this is not a vulnerability, but a superadmin able to use a feature as
intended. Cf. 

https://support.zabbix.com/browse/ZBX-11483?focusedCommentId=202709&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-202709
and
https://support.zabbix.com/browse/ZBX-11483?focusedCommentId=202789&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-202789

As such this might be actually be REJECTed. Martin and CVE assigning
team from MITRE, does this look correct? Should the CVE be rejected
instead?

Regards,
Salvatore
