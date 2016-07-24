if [ $1 ]; then
    case $1 in
        "dev")
            echo "$ docker-compose -f docker-compose-dev.yml ${@:2}"
            docker-compose -f docker-compose-dev.yml ${@:2}
        ;;
        "prod")
            echo "$ docker-compose -f docker-compose-prod.yml ${@:2}"
            docker-compose -f docker-compose-prod.yml ${@:2}
        ;;
    esac
else
   echo "Please input platform to script paramater.\n ./docker-compose.sh platform [args]"
fi
