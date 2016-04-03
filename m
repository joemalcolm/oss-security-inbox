X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1787" "Sunday" "3" "April" "2016" "09:53:11" "-0400" "Kash Pande" "kash@tripleback.net" "<57012047.6010002@tripleback.net>" "41" "[oss-security] OpenZFS (Linux, FreeBSD, illumos) fails to transmit holes" "^Date:" nil nil "4" "2016040313:53:11" "[oss-security] OpenZFS (Linux, FreeBSD, illumos) fails to transmit holes" (number mark "        kash@tripleb Apr  3   41/1787  " thread-indent "\"[oss-security] OpenZFS (Linux, FreeBSD, illumos) fails to transmit holes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32023 invoked by uid 550); 3 Apr 2016 13:54:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31977 invoked from network); 3 Apr 2016 13:54:30 -0000
Message-ID: <57012047.6010002@tripleback.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------050300040209070104080508"
Date: Sun, 3 Apr 2016 09:53:11 -0400
From: Kash Pande <kash@tripleback.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenZFS (Linux, FreeBSD, illumos) fails to transmit holes
To: oss-security@lists.openwall.com

--------------050300040209070104080508
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

This needs CVE - It seems best to have a single CVE for OpenZFS rather
than one for each distribution.

https://github.com/openzfs/openzfs/pull/37

    In certain circumstances, "zfs send -i" (incremental send) can produce a
    stream which will result in incorrect sparse file contents on the
    target.

    The problem manifests as regions of the received file that should be
    sparse (and read a zero-filled) actually contain data from a file that
    was deleted (and which happened to share this file's object ID).

    Note: this can happen only with filesystems (not zvols, because they do
    not free (or reuse) object IDs).

    Note: This can happen only if, since the incremental source (FromSnap),
    a file was deleted and then another file was created, and the new file
    is sparse (i.e. has areas that were never written to and should be
    implicitly zero-filled).

    We suspect that this was introduced by 4370 (applies only if hole_birth
    feature is enabled), and made worse by 5243 (applies if hole_birth
    feature is disabled, and we never send any holes).

    The bug is caused by the hole birth feature. When an object is deleted
    and replaced, all the holes in the object have birth time zero. However,
    zfs send cannot tell that the holes are new since the file was replaced,
    so it doesn't send them in an incremental. As a result, you can end up
    with invalid data when you receive incremental send streams. As a
    short-term fix, we can always send holes with birth time 0 (unless it's
    a zvol or a dataset where we can guarantee that no objects have been
    reused).



--------------050300040209070104080508--
