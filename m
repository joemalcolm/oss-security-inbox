X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["901" "Wednesday" "27" "March" "2019" "13:05:04" "-0400" "Josh Elser" "elserj@apache.org" nil "20" nil nil nil nil "3" nil nil (number mark "U       elserj@apach Mar 27   20/901   " thread-indent "\"[oss-security] [CVE-2019-0212] Apache HBase REST Server incorrect user authorization\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-0212] Apache HBase REST Server incorrect user authorization" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26454 invoked by uid 550); 27 Mar 2019 17:09:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22198 invoked from network); 27 Mar 2019 17:05:20 -0000
To: oss-security@lists.openwall.com
From: Josh Elser <elserj@apache.org>
Message-ID: <8f894e4f-533f-07e1-085e-06f41106ac0d@apache.org>
Date: Wed, 27 Mar 2019 13:05:04 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:66.0)
 Gecko/20100101 Thunderbird/66.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [CVE-2019-0212] Apache HBase REST Server incorrect user authorization

CVE-2019-0212: HBase REST Server incorrect user authorization

Description: In all previously released Apache HBase 2.x versions, 
authorization was incorrectly applied to users of the HBase REST server. 
Requests sent to the HBase REST server were executed with the 
permissions of the REST server itself, not with the permissions of the 
end-user. This issue is only relevant when HBase is configured with 
Kerberos authentication, HBase authorization is enabled, and the REST 
server is configured with SPNEGO authentication. This issue does not 
extend beyond the HBase REST server.

Versions affected: 2.0.0-2.0.4, 2.1.0-2.1.3

Mitigation: Stop the HBase REST server until your installation is 
upgraded to HBase 2.0.5, 2.1.4, or any other later release. Upon 
upgrading to a newer version, no other action is required.

Credit: This issue was discovered by Gaurav Kanade

- The Apache HBase PMC
