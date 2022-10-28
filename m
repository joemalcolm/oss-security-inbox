Received: (qmail 6115 invoked by uid 550); 28 Oct 2022 11:18:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23637 invoked from network); 28 Oct 2022 01:39:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: ShunFeng Cai <caishunfeng@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9be6df2b-5b8d-af10-94f9-ba98885f66e3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 28 Oct 2022 01:39:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-26884: Apache DolphinScheduler exposes files without
 authentication 

Description:

Users can read any files by log server, Apache DolphinScheduler users shoul=
d upgrade to version 2.0.6 or higher.

