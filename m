Received: (qmail 27772 invoked by uid 550); 16 Aug 2022 19:05:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22094 invoked from network); 16 Aug 2022 13:22:49 -0000
Authentication-Results: apache.org; auth=none
Date: Tue, 16 Aug 2022 14:20:50 +0100
From: Ash Berlin-Taylor <ash@apache.org>
To: oss-security@lists.openwall.com
Message-Id: <QEMPGR.4UV0V117D2AA@apache.org>
X-Mailer: geary/40.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-YpI9UxRDLi0WHEWv/qhj"
Subject: [oss-security] CVE-2022-38362: Apache Airflow Docker Provider <3.0 RCE vulnerability
 in example dag

--=-YpI9UxRDLi0WHEWv/qhj
Content-Type: text/plain; charset=us-ascii; format=flowed

Description:

Apache Airflow Docker's Provider shipped with an example DAG that was 
vulnerable to (authenticated) remote code exploit of code on the 
Airflow worker host.


Mitigation:

Disable loading of example DAGs or upgrade the 
apache-airflow-providers-docker to 3.0.0 or above

Credit:

Thanks to Kai Zhao of 3H Secruity Team for reporting this


--=-YpI9UxRDLi0WHEWv/qhj--

