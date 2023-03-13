Received: (qmail 5656 invoked by uid 550); 13 Mar 2023 20:09:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3546 invoked from network); 13 Mar 2023 20:06:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1678737974;
	bh=VvI/69yFDpIJlSEylMwy54mZ5YQdquN+Mnf1vggZ5Ww=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
	b=qpX7jfVqx4pv8ku4uf0IZii0sJ95Lx6wHhlUsfysdansxOeIgM25MkPkjFHhO4fDW
	 RV2bBji3+YCLw3oCnJKGEdiYgveM1IacsANAQVmoSo/jmwj8WmeKa9zptuFSkHhjHS
	 OQc9KGvfqP0YBYOhFtSndAmMCgQYsjE/61m/BIZWXpe6U5XaBTyqyR1cw4AqCebI2W
	 0C3jlwBZqs4TaCSm3V7JfnviGwY/SxS5wHjKFoN9QTnpbXBpQx/7BJJPLgle2pqCnw
	 qBK74x+yWYIa1oEvnPKz1N0XUgCr/ySU9ZQZsSR19o4Naa3cjew+sGLqbqKQFqCzoe
	 hnP+Ighm630JA==
Date: Mon, 13 Mar 2023 17:06:10 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <ZA+CMlU2Acu8NBhA@quatroqueijos.cascardo.eti.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2023-1032 - Linux kernel io_uring IORING_OP_SOCKET double free

A double-free vulnerability was found in the handling of IORING_OP_SOCKET
operation with io_uring on the Linux kernel.

It was fixed by commit:

649c15c7691e9b13cbe9bf6c65c365350e056067 ("net: avoid double iput when sock_alloc_file fails")

It has been assigned CVE-2023-1032.

It affects kernel versions starting with 5.19-rc1 and should affect any
backports including commits da214a475f8bd1d3e9e7a19ddfeb4d1617551bab ("net: add
__sys_socket_file()") and 1374e08e2d44863c931910797852589803997668 ("io_uring:
add socket(2) support").

It requires a memory allocation failure to happen, which will be followed by a
double free of a recently allocated object.

Causing the memory allocation failure does not require much more than being in
a memory cgroup with a maximum allocation setup (systemd MemoryMax, for
example).

The double free happens with iput, which sets up a flag, and leads to a BUG_ON.
So, at least, a system crash is possible.

Cascardo.
