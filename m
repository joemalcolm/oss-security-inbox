X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1074" "Tuesday" "8" "January" "2019" "22:18:19" "+0000" "Ash Berlin-Taylor" "ash@apache.org" "<dacb0f1a-296e-b839-86ca-237d7f39935a@apache.org>" "27" "[oss-security] RCE, CSRF and Information leak vulnerabilities against Airflow <= 1.8.2 (CVE-2017-15720, CVE-2017-17835, CVE-2017-17836)" nil nil nil "1" "2019010822:18:19" "[oss-security] RCE, CSRF and Information leak vulnerabilities against Airflow <= 1.8.2 (CVE-2017-15720, CVE-2017-17835, CVE-2017-17836)" (number mark "U       ash@apache.o Jan  8   27/1074  " thread-indent "\"[oss-security] RCE, CSRF and Information leak vulnerabilities against Airflow <= 1.8.2 (CVE-2017-15720, CVE-2017-17835, CVE-2017-17836)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17609 invoked by uid 550); 8 Jan 2019 23:11:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1660 invoked from network); 8 Jan 2019 22:18:36 -0000
From: Ash Berlin-Taylor <ash@apache.org>
Cc: Seth Long <seth.long@creditkarma.com>
To: dev@airflow.apache.org, Apache Security Team <security@apache.org>,
 oss-security@lists.openwall.com
Message-ID: <dacb0f1a-296e-b839-86ca-237d7f39935a@apache.org>
Date: Tue, 8 Jan 2019 22:18:19 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 PostboxApp/6.1.9
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB
Subject: [oss-security] RCE, CSRF and Information leak vulnerabilities against Airflow <=
 1.8.2 (CVE-2017-15720, CVE-2017-17835, CVE-2017-17836)

Hi Airflow community,

This post summaries some security vulnerabilities that were fixed in 
Airflow 1.9.0 (which is quite a while ago now) but that we never 
formally reported as such.

If you are still on 1.8.2 or earlier we strongly encourage you to 
upgrade to the latest version, but at least to 1.9.0 to get fixes for 
these CVEs.

CVE-2017-15720: An authenticated user can execute code remotely on the 
Airflow webserver by creating a special object.

CVE-2017-17835: CSRF Vulnerabilities - One of which allowed for a remote 
command injection on a default install of Airflow

CVE-2017-17836: An experimental Airflow feature displayed authenticated 
cookies, as well as passwords to databases used by Airflow.  An attacker 
who has limited access to airflow, weather it be via XSS or by leaving a 
machine unlocked. An attacker can exfil all credentials from the system.

These are quite old so I am have not managed to attribute these to any 
specific reporter. If you reported one of these: sorry, and let me know 
(off list) and I will correct this.

Thanks,
Ash
