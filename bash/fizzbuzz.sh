for i in `seq 0 99`;
do
	case 0 in
		 $((i % 15)) ) 
		 echo "fizzbuzz" ;;
		 $((i % 3)) ) 
		 echo "fizz" ;;
		 $((i % 5)) ) 
 		 echo "buzz" ;;
		 * )
		 echo $i ;;
	esac
done