#!/bin/bash

# 函数：创建项目目录结构
function create_project_structure {
    local project_name=$1
    local project_path="$project_name"

    echo "正在创建 $project_name 的项目目录结构..."

    # 创建顶级目录
    mkdir -p "$project_path"

    # 创建 README.md
    touch "$project_path/README.md"

    # 创建文档目录
    mkdir -p "$project_path/docs"
    touch "$project_path/docs/user_manual.md"
    touch "$project_path/docs/tech_specs.md"
    touch "$project_path/docs/changelog.md"

    # 创建源代码目录
    mkdir -p "$project_path/src/models"
    mkdir -p "$project_path/src/datasets"
    mkdir -p "$project_path/src/utils"
    mkdir -p "$project_path/src/train"
    mkdir -p "$project_path/src/evaluate"

    # 创建数据集目录
    mkdir -p "$project_path/data/raw"
    mkdir -p "$project_path/data/processed"
    mkdir -p "$project_path/data/splits"

    # 创建实验目录
    mkdir -p "$project_path/experiments/configs"
    mkdir -p "$project_path/experiments/logs"
    mkdir -p "$project_path/experiments/results"

    # 创建模型检查点目录
    mkdir -p "$project_path/checkpoints"

    # 创建测试目录
    mkdir -p "$project_path/tests/unit_tests"
    mkdir -p "$project_path/tests/integration_tests"

    # 创建脚本目录
    mkdir -p "$project_path/scripts"

    echo "$project_name 的项目目录结构创建完成。"
}

# 主程序
echo "请输入项目名称："
read project_name
create_project_structure "$project_name"