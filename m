X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["723" "Saturday" "21" "May" "2016" "19:21:56" "+0800" "Baozeng Ding" "sploving1@gmail.com" "<a55a2a8b-31c4-d454-376a-fe85302c9b29@gmail.com>" "21" "[oss-security] CVE request: -- Linux kernel: Null pointer dereference in tipc_nl_publ_dump" "^Cc:" nil nil "5" "2016052111:21:56" "[oss-security] CVE request: -- Linux kernel: Null pointer dereference in tipc_nl_publ_dump" (number mark "        sploving1@gm May 21   21/723   " thread-indent "\"[oss-security] CVE request: -- Linux kernel: Null pointer dereference in tipc_nl_publ_dump\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20395 invoked by uid 550); 21 May 2016 11:22:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20377 invoked from network); 21 May 2016 11:22:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=cw2Ahi3ROjXRTNJkIQPMnVGfIWMDEvD4IvIz2LkX9U8=;
        b=WpLgUUyylBnqBi9hx80Rllws7xZOqxEsoLbs5O5pW0YHUu2Of41/Ovy8l7L9OJhNVT
         +eovdoZS6M0dnlDYmjbKpiWwui87gUY2Ldc/d+6FRqdRRzbWZrzzJUw/gm7h1BVBFIDD
         7N1OopIO7W2A1NnqSTjfZL58Wrx7dQwaxbE86CWXn6gvJi8Cvlyy3iErYHS7S93D73jK
         lBBlZS/79Dcs/BSREi9rQZeZRAOSsuxlFAWsY03rKobC/Kq+IABAIkYE30qUoH7SJ25v
         FhHHrVvDPZ/tztNWfrrcAU0l70SxUkUj+x02GNlLUT2INkTAy+7GJwxvtv4lXH5p+DZg
         0Kxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=cw2Ahi3ROjXRTNJkIQPMnVGfIWMDEvD4IvIz2LkX9U8=;
        b=m5I7vtj+jMzu7KsO1kVq9ybqBwOVrHrj1KkM1e65xLavdp9I+UP1wOGqiUNnNYSY53
         rS6bM2AGgxEo5LHzWfDwX9CxcHQwIODAeWOwoR6EViiBk2EJ9gXhTcB5tdi60tryQDpp
         JQQYceOwg9WvBiNYD+nZuqTURT5HC7QXGi3IoaaCIV+8eTe8dvZdEruiI0VrVoxeTjkI
         RSOfWsW5Jgo6dBbnkXrexE3aZN01RMepCv6yCg4weDaFaGcgYJ+OslQ8OhbIWZ1U8WvB
         7tN95lFxdPCPR19XRPbemZbBib43kls3e9nyg9JfT/Wo7IFpArnQj3EYXjl14pU1NBX2
         H8Cw==
X-Gm-Message-State: AOPr4FXaW9LDSXF04c4HjWRmJnjK9B0QtlVLPUnvnLPgeiskGzHHuv50M9W8kCdbRtVILg==
X-Received: by 10.66.164.133 with SMTP id yq5mr12032197pab.107.1463829726342;
        Sat, 21 May 2016 04:22:06 -0700 (PDT)
Message-ID: <a55a2a8b-31c4-d454-376a-fe85302c9b29@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: richard.alpe@ericsson.com
Date: Sat, 21 May 2016 19:21:56 +0800
From: Baozeng Ding <sploving1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: -- Linux kernel: Null pointer dereference in
 tipc_nl_publ_dump
To: oss-security@lists.openwall.com, cve-assign@mitre.org

Hello,
Without checking the pointer to the netlink socket attribute, it could 
cause a null pointer dereference when parsing the nested attributes in 
function tipc_nl_publ_dump. It allows local users to cause a denial of 
service. This vulnerability affects Linux kernel versions from 3.19 to 4.6.

References:
http://lists.openwall.net/netdev/2016/05/14/28
http://lists.openwall.net/netdev/2016/05/16/26

Fixed via:
https://github.com/torvalds/linux/commit/45e093ae2830cd1264677d47ff9a95a71f5d9f9c

Introduce by:
https://github.com/torvalds/linux/commit/1a1a143daf84db95dd7212086042004a3abb7bc2

Could you please assign a CVE for this vulnerability? Thank you.

Best Regards,
Baozeng Ding,  Alibaba Mobile Security Team

