X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["720" "Tuesday" "8" "January" "2019" "22:31:58" "+0000" "Ash Berlin-Taylor" "ash@apache.org" "<ecc2a46a-c655-8648-23ba-bdaa7261c904@apache.org>" "22" "[oss-security] CVE-2018-20245: Apache Airflow LDAP auth backend did not validate SSL certificate for <= 1.10.0" "^Cc:" nil nil "1" "2019010822:31:58" "[oss-security] CVE-2018-20245: Apache Airflow LDAP auth backend did not validate SSL certificate for <= 1.10.0" (number mark "U       ash@apache.o Jan  8   22/720   " thread-indent "\"[oss-security] CVE-2018-20245: Apache Airflow LDAP auth backend did not validate SSL certificate for <= 1.10.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24061 invoked by uid 550); 8 Jan 2019 23:12:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14192 invoked from network); 8 Jan 2019 22:32:14 -0000
Message-ID: <ecc2a46a-c655-8648-23ba-bdaa7261c904@apache.org>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 PostboxApp/6.1.9
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Cc: Stijn van Drongelen <rhymoid@gmail.com>
Date: Tue, 8 Jan 2019 22:31:58 +0000
From: Ash Berlin-Taylor <ash@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-20245: Apache Airflow LDAP auth backend did not validate SSL
 certificate for <= 1.10.0
To: dev@airflow.apache.org, Apache Security Team <security@apache.org>,
 oss-security@lists.openwall.com

CVE-2018-20245: LDAP auth backend did not validate SSL certificate for 
Apache Airflow <= 1.10.0

Vendor: The Apache Software Foundation

Versions Affected: <= 1.10.0

Description:
The LDAP auth backend (airflow.contrib.auth.backends.ldap_auth) was 
misconfigured and contained improper checking of exceptions which 
disabled server certificate checking.

Apache Airflow 1.10.1+ now only supports TLS connections and does not 
support insecure connections to LDAP servers any more. (Self-signed 
certificates are allowed if you pass in the expected server certificate 
as the "cacert" option under the "[ldap]" section of the config.)

Credit:
This issue was discovered by Stijn van Drongelen

Thanks,
Ash Berlin-Taylor
