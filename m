X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1086" "Saturday" "16" "July" "2016" "05:43:37" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160716034337.GA10235@eldamar.local>" "36" "[oss-security] CVE Request: Zend Framework: Potential SQL injection in ORDER and GROUP statements of Zend_Db_Select" nil nil nil "7" "2016071603:43:37" "[oss-security] CVE Request: Zend Framework: Potential SQL injection in ORDER and GROUP statements of Zend_Db_Select" (number mark "U       carnil@debia Jul 16   36/1086  " thread-indent "\"[oss-security] CVE Request: Zend Framework: Potential SQL injection in ORDER and GROUP statements of Zend_Db_Select\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7615 invoked by uid 550); 16 Jul 2016 03:43:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7597 invoked from network); 16 Jul 2016 03:43:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4lo0byOCiR1+chYnQTCvGf4awAAp7FE7IHljdmH7c54=;
        b=fRfwR3pH/3VJ2nygFslXbevmFTTiTnWFuiut8c3YiaLZlrdblHl2aRX2GlKzVXr/UR
         CqJOCjPipe21CzjvePiWpL1ynnkNbrlfjsU/vxL+J17SWXexUMSsKbimwwbp/4k4dbvI
         dzuZUSrYF+AkGKlWx7f3ew4pPmxi9y4s32It2An2TcaRHFFp9yKJO9FszUzGt5Gh5sNF
         MP6ASJ9pYf1/uJB+uM2e2qTtg2yi2ukMH15nmVilSVAbCWlIGSBxK5F/bhEabx7hsXSU
         gS3dqcQo1xDL0L2ZVLQXTeH2keHhF3eWE+BXiIBXxgfu77Du0jKypRVtu/iiVU/NPJ4c
         AZfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=4lo0byOCiR1+chYnQTCvGf4awAAp7FE7IHljdmH7c54=;
        b=Vn4gKN6+hy95F70wk4Z1cvR9iFMr5XBvQ42v+m9oFolls/e57LhPfKpHH9wcoTMVfb
         zQImgwMkG/2MIUtM7BtGFLxkvnlCdE2BazIzIJ+xC8nDVEblRGDbBMtcj3AAODb+DR0V
         1G7UuaoMquMtrQlEjj1JPPjCjP7uNUAmQy+I6LRrPhEH9Od5enNW0JycC5K9FI6WBg/M
         o9Srdsv2USwSrEZYrFryHdK0fP3Ytvf7u/8cjsJI4C0Qh8gE+sdEDu8lxpoYoz8yMSbl
         8g7iVamy2x7f0B1vdOV89UZxXICgAtfVhBz4BF7BaaQrh42yLVDM0UVd1NF6YJF99NI1
         9XDg==
X-Gm-Message-State: ALyK8tLyd+xturebKg+QgVzjSTaZBBWpabub7A5p6gVo7NyG3KyOmSJGxLUWbo3bv95gSA==
X-Received: by 10.194.246.1 with SMTP id xs1mr3664615wjc.22.1468640619208;
        Fri, 15 Jul 2016 20:43:39 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 16 Jul 2016 05:43:37 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: taffit@debian.org
Message-ID: <20160716034337.GA10235@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] CVE Request: Zend Framework: Potential SQL injection in ORDER and
 GROUP statements of Zend_Db_Select

Hi

The Zend Framework project released security advisory ZF2016-02[0] to
address a potential SQL injection in ORDER and GROUP statements of
Zend_Db_Select.

>From the advisory:

> The implementation of ORDER BY and GROUP BY in Zend_Db_Select of ZF1
> is vulnerable by the following SQL injection:
>
> $db = Zend_Db::factory(/* options here */);
> $select = new Zend_Db_Select($db);
> $select->from('p');
> $select->order("MD5(\"(\");DELETE FROM p2; #)"); // same with group()
>
> The above $select will render the following SQL statement:
>
> SELECT `p`.* FROM `p` ORDER BY MD5("");DELETE FROM p2; #) ASC
>
> instead of the correct one:
>
> SELECT `p`.* FROM `p` ORDER BY "MD5("""");DELETE FROM p2; #)" ASC
>
> This security fix can be considered as an improvement of the previous
> ZF2014-04.

Upstream commit is at [1] as bf3f40605be3d8f136a07ae991079a7dcb34d967.

 [0] https://framework.zend.com/security/advisory/ZF2016-02
 [1]  https://github.com/zendframework/zf1/commit/bf3f40605be3d8f136a07ae991079a7dcb34d967

Could you please assign a CVE for this issue.

Regards,
Salvatore
