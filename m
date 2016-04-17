X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2084" "Monday" "18" "April" "2016" "01:23:12" "+0800" "Berry" "throber3@gmail.com" "<CAODc34+BJ7bSmCJfe7g6jjAj+xDfj0ZyZCrUuiM7f_Gs1+XbYQ@mail.gmail.com>" "57" "[oss-security] CVE request - samsumg android phone msm_sensor_config function write some range kernel address with any value" nil nil nil "4" "2016041717:23:12" "[oss-security] CVE request - samsumg android phone msm_sensor_config function write some range kernel address with any value" (number mark "U       throber3@gma Apr 18   57/2084  " thread-indent "\"[oss-security] CVE request - samsumg android phone msm_sensor_config function write some range kernel address with any value\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28128 invoked by uid 550); 17 Apr 2016 18:38:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21556 invoked from network); 17 Apr 2016 17:23:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc;
        bh=8OBy6BzD0IVxR2eHFr5SNp4EN6rBazkUbd3aXQC9n+g=;
        b=O8SEe2bEjUBlLL+4sT4ZG7fUGMGGxbL7B2UaKqpFSzE7f9xK5L+IX4w2LnBnwVlfec
         hXRgnaG6AN2jD480jf3ua/zueT9X47zsNxkDmaaiXcuflnBk2NCkxnuf5t0nXOD9gXWQ
         LjLhSjkR8ILVtkiCmSKoMHhBvCbDFsSy9xgLVmRuLM6preO57N0H1sk2mW0abo2x+idc
         wQgX5IR1J0gM9ERqZKztp1eCFs/aknXzkQ7t22g85Tm/4784JlWvBg34QRb22DL80nQh
         wu1PEjYJiZaoQ5jeT595WZnnM2Y+bfVo3pPVKh8S2IHr71oVSjomFXMa0kXxzTNJfsxt
         Z46g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc;
        bh=8OBy6BzD0IVxR2eHFr5SNp4EN6rBazkUbd3aXQC9n+g=;
        b=NZgQ6zs64DhQLwqi4c2uc35HmDBz2kZXFkCRwvB+gVR/rniho/S+46Vg4voNRzLq/J
         raoCxj9J0NojXtroYigUAh4gzFUgty7maXX0qLqwpDuF8ypLcKl9Vym52madzzbcuAKg
         06lbF/OrgB65RG1ndqIiCCSZLkpVBDDj+1/+mnAMQRxYXA+QS2WKzrahsdR7sDSprAHs
         6D3BE6ljB4gyyxoj5qPTDjZDFu+VnZmcgVbYjU+NtXEilpgAPqZJyhN0KYIMbExl9bg7
         /4X9QTCAHUMdZLNs3ekURogWdElqu8GS+Ex6Qnkkm9sFbxuhaX0f0PqHBAtrWHJPl+7f
         1UzQ==
X-Gm-Message-State: AOPr4FX3QTp/1ihMK6L+OuZhXU7wq0MRBuVjeQowWQCfrlRVMZJi5Ok7LgmuDhsohqkLyI0xynYRf2IYlKhNww==
MIME-Version: 1.0
X-Received: by 10.25.19.151 with SMTP id 23mr12878877lft.125.1460913792151;
 Sun, 17 Apr 2016 10:23:12 -0700 (PDT)
Date: Mon, 18 Apr 2016 01:23:12 +0800
Message-ID: <CAODc34+BJ7bSmCJfe7g6jjAj+xDfj0ZyZCrUuiM7f_Gs1+XbYQ@mail.gmail.com>
From: Berry <throber3@gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Cc: cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request - samsumg android phone msm_sensor_config function write
 some range kernel address with any value

            The v4l-subdev driver provides an ioctl system call
interface to user space clients for communication. When processing
this communication, the msm_sensor_config function uses the
user-supplied value gpio_config.gpio_name as an index to a buffer for
write operations without any boundary checks.


              code:
              //
kernel/SM-G9008V_CHN_KK_Opensource/Kernel/drivers/media/platform/msm/camera_v2/sensor/msm_sensor.c

             int msm_sensor_config(struct msm_sensor_ctrl_t *s_ctrl,
void __user *argp){
                struct sensorb_cfg_data *cdata = (struct
sensorb_cfg_data *)argp;

                case CFG_SET_GPIO_STATE: {    //case 12:
                  struct msm_sensor_gpio_config gpio_config;
                  struct msm_camera_power_ctrl_t *data =
&s_ctrl->sensordata->power_info;
                  if (copy_from_user(&gpio_config,
                         (void*)cdata->cfg.setting,
                         sizeof(gpio_config))) {
                    pr_err("%s:%d failed\n", __func__, __LINE__);
                    rc = -EFAULT;
                    break;
                  }
                  pr_info("%s: setting gpio: %d to %d\n", __func__,

data->gpio_conf->gpio_num_info->gpio_num[gpio_config.gpio_name],
                    gpio_config.config_val);

                  gpio_set_value_cansleep(

data->gpio_conf->gpio_num_info->gpio_num[gpio_config.gpio_name],
                    gpio_config.config_val);  //control
gpio_config.gpio_name and gpio_config.config_val
                  break;
                }
                default:
                  rc = -EFAULT;
                  break;
              }


            Affected versions:
            KK(4.4) and L with APQ8084, MSM8974, and MSM8974pro chipset

             fix:
             http://security.samsungmobile.com/smrupdate.html#SMR-JAN-2016
             SVE-2015-4958: msm_sensor_config security issues

             we report this to samsung, samsung reply  to us if we
want to get cve  request it by ourself.

              Best regards,
              Berry Cheng
