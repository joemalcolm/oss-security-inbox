X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["656" "Friday" "22" "June" "2018" "06:07:45" "-0700" "Josh Elser" "elserj@apache.org" "<4701b1a6-1dc7-d95f-a68c-32df21e1e366@apache.org>" "19" "[oss-security] CVE-2018-8025 on Apache HBase" "^Cc:" nil nil "6" "2018062213:07:45" "[oss-security] CVE-2018-8025 on Apache HBase" (number mark "        elserj@apach Jun 22   19/656   " thread-indent "\"[oss-security] CVE-2018-8025 on Apache HBase\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26078 invoked by uid 550); 22 Jun 2018 13:43:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22183 invoked from network); 22 Jun 2018 13:07:56 -0000
Message-ID: <4701b1a6-1dc7-d95f-a68c-32df21e1e366@apache.org>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: user@hbase.apache.org, oss-security@lists.openwall.com
Date: Fri, 22 Jun 2018 06:07:45 -0700
From: Josh Elser <elserj@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-8025 on Apache HBase
To: dev <dev@hbase.apache.org>

CVE-2018-8025 describes an issue in Apache HBase that affects the 
optional "Thrift 1" API server when running over HTTP. There is a 
race-condition which could lead to authenticated sessions being 
incorrectly applied to users, e.g. one authenticated user would be 
considered a different user or an unauthenticated user would be treated 
as an authenticated user.

https://issues.apache.org/jira/browse/HBASE-20664 implements a fix for 
this issue, and this fix is contained in the following releases of 
Apache HBase:

* 1.2.6.1
* 1.3.2.1
* 1.4.5
* 2.0.1

This vulnerability affects all 1.x and 2.x release lines (except 1.0.0).

- The Apache HBase PMC
