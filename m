X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2657" "Friday" "25" "June" "2021" "10:57:09" "+0800" "Luo Likang" "luolikang@nsfocus.com" nil "143" "[oss-security] FW: An out-of-bound read/write in fsi driver" nil nil nil "6" nil nil (number mark "U       luolikang@ns Jun 25  143/2657  " thread-indent "\"[oss-security] FW: An out-of-bound read/write in fsi driver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] FW: An out-of-bound read/write in fsi driver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15462 invoked by uid 550); 25 Jun 2021 10:58:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1481 invoked from network); 25 Jun 2021 02:57:24 -0000
From: "Luo Likang" <luolikang@nsfocus.com>
To: <oss-security@lists.openwall.com>
References: 
In-Reply-To: 
Date: Fri, 25 Jun 2021 10:57:09 +0800
Message-ID: <001f01d7696d$ca7f4890$5f7dd9b0$@nsfocus.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0020_01D769B0.D8A3C110"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AddmTinWfrHWIxSrRDGKBPwNu9crzADHwhlw
Content-Language: zh-cn
Subject: [oss-security] FW: An out-of-bound read/write in fsi driver

------=_NextPart_000_0020_01D769B0.D8A3C110
Content-Type: text/plain;
	charset="gb2312"
Content-Transfer-Encoding: quoted-printable

=20

Because of my mistake, I took a normal bug as a security bug and reported it
to linux-distros=A3=AClinux-distros requested me notify oss-security since =
these
bugs were deemed to not be a security vulnerability, and no embargo was set.


=20

Because of copy_ from_user has some check, so - 1 does not cause
cross-border access, and lots of check in fsi_check_access().

=20

The following is the original of my report:

=20

I found an oob read/write bug in function cfam_read/cfam_write of
drivers/fsi/fsi-core.c

It lack of the check of count and offset.

=20

```

/* Create chardev for userspace access */

       cdev_init(&slave->cdev, &cfam_fops);

- - - -  - - - - - - - - - - - -- - - - - - - - - - -=20

static const struct file_operations cfam_fops =3D {

       .owner           =3D THIS_MODULE,

       .open             =3D cfam_open,

       .llseek            =3D cfam_llseek,

       .read       =3D cfam_read,

       .write             =3D cfam_write,

};

```

In userspace, we can open this chardev can invoke read to use cfam_read.

=20

cfam_read

```

static ssize_t cfam_read(struct file *filep, char __user *buf, size_t count,

                     loff_t *offset)

{

       struct fsi_slave *slave =3D filep->private_data;

       size_t total_len, read_len;

       loff_t off =3D *offset;

       ssize_t rc;

=20

       if (off < 0)

              return -EINVAL;

=20

       if (off > 0xffffffff || count > 0xffffffff || off + count >
0xffffffff)//[0]

              return -EINVAL;

=20

       for (total_len =3D 0; total_len < count; total_len +=3D read_len) {

              __be32 data;

=20

              read_len =3D min_t(size_t, count, 4); //[1]

              read_len -=3D off & 0x3;          //[2]

=20

              rc =3D fsi_slave_read(slave, off, &data, read_len);//[3]

              if (rc)

                     goto fail;

              rc =3D copy_to_user(buf + total_len, &data, read_len);//[4]

              =A1=AD=A1=AD=A1=AD

       }

       =A1=AD=A1=AD..

       return count;

}

```

In [0]: This line will check the parameters to prevent integer overflow, but
it did not compare the size of count and offset, wo can pass count=3D2,
offset=3D3 to this function.

In [1]: read_len will be assigned a value of 2

In [2]: read_len-=3Doffset&3  =3D> read_len-=3D3 =3D> read_len=3D-1.

In[3]/[4]: will OOB access

=20

Cfam_write :

The reason for the vulnerability of cfam_write is the same as cfam_read.


------=_NextPart_000_0020_01D769B0.D8A3C110--

