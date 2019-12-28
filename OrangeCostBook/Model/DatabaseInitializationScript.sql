
/*
 * 橙子记账
 * 数据库初始化脚本
 *
 * 版权所有 QPomelo 2019
 * 1.0 版
 *
 */

/* 配置表 */
CREATE TABLE IF NOT EXISTS `Config` (
    `name` varchar(256), /* 配置名 */
    `value` varchar(1024) /* 值名 */
);

/* 创建数据库版本 ID */
INSERT INTO `Config` (`name`, `value`) VALUES ('databaseVersion', '1');
/* 创建 App 尚未被使用标记 */
INSERT INTO `Config` (`name`, `value`) VALUES ('setupDone', 'false');

/* 自定义账单类别 */
CREATE TABLE IF NOT EXISTS `CustomCostType` (
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, /* 类别 ID */
    `color` varchar(12), /* 显示颜色 */
    `icon` varchar(512), /* 图标地址 */
    `string` varchar(512) /* 名称 */
);
/* 插入缺省类别*/
INSERT INTO `CustomCostType` (`id`, `color`, `icon`, `string`) VALUES (9999, "#66CCFF", "NO_ITEM_IMG", "缺省类别")

/* 账本列表 */
CREATE TABLE IF NOT EXISTS `CostBook` (
    `bookId` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, /* 账本 ID */
    `title` varchar(256), /* 账本名 */
    `colorHexStr` varchar(12), /* 账本封面颜色 */
    `defaultCurrency` varchar(12) /* 账本基准货币(例: CNY、USD, NULL 为尚未设置) */
);

/* 创建默认账本 */
INSERT INTO `CostBook` VALUES (1, 'CostBook_Default', 'FFC12C', 'NULL');

/* 账单列表 */
CREATE TABLE IF NOT EXISTS `Cost` (
    `costId` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, /* 账单 ID */
    `typeId` INT UNSIGNED, /* 类别 ID */
    `currency` varchar(12), /* 货币(例: CNY) */
    `isCost` INT(1), /* 是否是支出 */
    `description` varchar(1024), /* 用户设置的账单备注 */
    `timeStampUnix` BIGINT, /* 记录时的 Unix 时间戳 */
    `photoPath` varchar(512) /* 附件名(例: 4aa1-6e04-46ec-965e-3146.png, 存储于 App/Document 目录下) */
);
